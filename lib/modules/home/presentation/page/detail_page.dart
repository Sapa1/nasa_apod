import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Modular.to.pop();
          },
          child: const Text('Detail page'),
        ),
      ),
    );
  }
}
