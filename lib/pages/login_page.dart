import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/widgets/register_widget.dart';
import 'package:flutter_firebase/widgets/sign_in_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OpenContainer(
          closedColor: Colors.white.withOpacity(0.2),
          openColor: Colors.white.withOpacity(0.2),
          closedBuilder: (BuildContext context, void Function() action) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text("Register"),
            );
          },
          openBuilder: (BuildContext context, void Function() action) {
            return RegisterWidget();
          },
        ),
        SizedBox(height: 20),
        OpenContainer(
          closedColor: Colors.white.withOpacity(0.2),
          openColor: Colors.white.withOpacity(0.2),
          closedBuilder: (BuildContext context, void Function() action) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text("Login"),
            );
          },
          openBuilder: (BuildContext context, void Function() action) {
            return SignInWidget();
          },
        ),
      ],
    );
  }
}
