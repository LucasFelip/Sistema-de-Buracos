import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller.page.dart';

class IniciatPage extends StatefulWidget {
  @override
  _IniciatPageState createState() => _IniciatPageState();
}

class _IniciatPageState extends State<IniciatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sistemas De Buracos'),
          actions: [
            CustomSwitch(),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [],
          ),
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: ControllerPage.instace.dartTheme,
        onChanged: (value) {
          ControllerPage.instace.changeTheme();
        });
  }
}
