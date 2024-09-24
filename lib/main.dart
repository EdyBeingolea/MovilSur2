import 'package:flutter/material.dart';
import 'package:myapp/pages/conductor.dart';
import 'package:myapp/pages/error.dart';
import 'package:myapp/pages/login.dart';
import 'package:myapp/pages/usuario.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// quitar la etiqueta de debug

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      initialRoute: "/",
      routes: {
        "/": (context) => const Login(),
        "/conductores": (context) => const Conductor(),
        "/usuario": (context) => const Usuario(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const ScreenError(),
        );
      },
    );
  }
}
