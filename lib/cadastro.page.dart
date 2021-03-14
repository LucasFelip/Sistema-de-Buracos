import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller.page.dart';
import 'package:flutter_application_1/login.page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  String name = '', senha = '', confsenha = '', mail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 25,
              ),
              TextFormField(
                onChanged: (Text) {
                  name = Text;
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
                  mail = Text;
                },
                autofocus: true,
                keyboardType: TextInputType.name,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 25,
              ),
              TextFormField(
                onChanged: (Text) {
                  senha = Text;
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
              TextFormField(
                onChanged: (Text) {
                  confsenha = Text;
                },
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.name,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirme a senha",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 125,
              ),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {
                    if (senha != '' || confsenha != '') {
                      if (senha == confsenha) {
                        DoSing();
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      }
                    }
                  }, //Função de pressionar, função atribuida ao botão
                  child: Text(
                    "Registrar",
                    style: TextStyle(color: Colors.green[300]),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void DoSing() {
    SavePage newSavePage =
        SavePage(name: name, mail: mail, password: senha, keepOn: true);
    Save(newSavePage);
  }

  void Save(SavePage user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("LOGIN_USER_INFOS", json.encode(user.toJson()));
  }
}
