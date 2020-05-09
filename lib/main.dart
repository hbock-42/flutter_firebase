import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/login_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Chat',
      initialRoute: '/',
      routes: {
        '/': (context) => myMaterial(child: LoginPage()),
        // '/': (context) => myMaterial(child: HomePage()),
      },
      theme: ThemeData(
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.red, displayColor: Colors.yellow)),
    );
  }

  Widget myMaterial({Widget child}) => Material(
        color: Colors.black,
        child: child,
      );
}
