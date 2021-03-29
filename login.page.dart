import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro.page.dart';
import 'package:flutter_application_1/controller.page.dart';
import 'package:flutter_application_1/inicia.page.dart';
import 'package:flutter_application_1/posLogin.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[300],
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  onChanged: (text) {
                    controller:
                    namecontroller;
                  },
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  height: 25,
                ),
                TextFormField(
                  onChanged: (Text) {
                    controller:
                    passwordcontroller;
                  },
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  height: 25,
                ),
                ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => posLogin()),
                      );
                    },
                    //Função de pressionar, função atribuida ao botão
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.green[300]),
                    ),
                    color: Colors.white,
                  ),
                ),
                Divider(),
                Center(
                  child: GestureDetector(
                    child: Text('Cadastrar'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CadastroPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
