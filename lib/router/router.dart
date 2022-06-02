import 'package:fluro/fluro.dart';
import 'route_handlers.dart';

class Flurorouter {
//Instancia
  static final FluroRouter router = FluroRouter();

  //Configuracion de las rutas

  static void configureRoutes() {
    router.define('/',
        handler: counterStatefulHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful',
        handler: counterStatefulHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: counterStatefulHandler, transitionType: TransitionType.fadeIn);

    router.define('/provider',
        handler: counterProviderHandler, transitionType: TransitionType.fadeIn);

    router.define('/dashboard/users/:userid/:roleid',
        handler: dashboardUserHandler, transitionType: TransitionType.fadeIn);
  //Default
    router.notFoundHandler = pageNotFoundHandler;
  }
}
