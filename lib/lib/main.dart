
import 'package:flutter/material.dart';
import 'package:flutter_login/src/pages/design_page.dart';
import 'package:flutter_login/src/pages/login.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: const LoginClass(),
      onGenerateRoute: (RouteSettings settings) {
        //Rutas de la app
        switch(settings.name){
          case '/login':
            return MaterialPageRoute(builder: (_) => const LoginClass());
          case '/design':
            return MaterialPageRoute(builder: (_) => DesignPage());
            default:
            return MaterialPageRoute(builder: (_) => const LoginClass());
        }
      }
    );
  }
}