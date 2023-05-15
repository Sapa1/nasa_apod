import 'package:flutter_modular/flutter_modular.dart';
import 'package:nasa_apod/modules/home/home_module.dart';

import 'core/connection_status/connection_status.dart';
import 'core/connection_status/connection_status_impl.dart';
import 'core/const/routes.dart';
import 'core/dio/nasa_apod_dio.dart';

class AppModule extends Module {
  AppModule();

  @override
  List<Bind> get binds => [
        //Components
        Bind.factory((i) => NasaApodDio()),
        Bind.singleton<ConnectionStatus>((i) => ConnectionStatusImpl()),

        //Bloc

        //usecase

        //repository

        //datasource
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AppRoutes.initial, module: HomeModule()),
      ];
}
