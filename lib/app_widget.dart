import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme:
            //TODO: decidir se eu prefiro a transição normal ou essa
            //  ThemeData.dark(),
            ThemeData(
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),
        title: 'Nasa APOD',
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      );
}
