import 'package:flutter/material.dart';
import 'locator.dart';

import 'package:bases_web/router/router.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'services/navigator_service.dart';

void main() {
  setupLocator(); // Mantiene el navigator key
  //Llama a la configuracion de las rutas
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: "/",
      //  onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
      onGenerateRoute: (routeSettings) =>
          Flurorouter.router.generator(routeSettings),
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
    );
  }
}
