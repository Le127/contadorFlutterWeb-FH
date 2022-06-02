
import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';
import '../ui/views/view_404.dart';

//Handlers
//Es lo que se va a ejecutar cuando el navegador web o app ingrese a la ruta.

final Handler counterStatefulHandler =
      Handler(handlerFunc: (context, parameters) {
    return CounterView(
      base: parameters['base']?.first ?? '5',
    );
  });

   final Handler counterProviderHandler =
      Handler(handlerFunc: (context, parameters) {
    return CounterProviderView( 
      base: parameters['q']?.first ?? '10',
    );
  });

   final Handler dashboardUserHandler =
      Handler(handlerFunc: (context, parameters) {
    return const View404();
  });

   final Handler pageNotFoundHandler =
      Handler(handlerFunc: (_, __) => const View404());