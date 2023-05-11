import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nasa_apod/core/const/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Modular.to.pushNamed(AppRoutes.detailsPage);
          },
          child: const Text('Home page'),
        ),
      ),
    );
  }
}
