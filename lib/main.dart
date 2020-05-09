import 'package:flutter/material.dart';
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
        '/': (context) => myMaterial(child: HomePage()),
      },
    );
  }

  Widget myMaterial({Widget child}) => Material(
        color: Colors.white,
        child: child,
      );
}
