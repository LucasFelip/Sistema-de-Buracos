import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller.page.dart';
import 'package:flutter_application_1/login.page.dart';
import 'package:flutter_application_1/posLogin.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //sistema de app
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ControllerPage.instace,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            brightness: ControllerPage.instace.dartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: LoginPage(),
        );
      },
    );
  }
}
