import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
        ),
        title: 'Nasa APOD',
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      );
}
