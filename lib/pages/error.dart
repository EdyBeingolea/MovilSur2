import 'package:flutter/material.dart';

class ScreenError extends StatelessWidget {
  const ScreenError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: const Center(
        child: Text("Página no encontrada"),
      ),
    );
  }
}
