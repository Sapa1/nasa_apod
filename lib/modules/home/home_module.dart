import 'package:flutter_modular/flutter_modular.dart';

import '../../core/const/routes.dart';
import 'presentation/page/detail_page.dart';
import 'presentation/page/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        //Bloc

        //UseCases

        //Repositories

        //DataSources
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initial,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          AppRoutes.detail,
          child: (context, args) => const DetailPage(),
        ),
      ];
}
