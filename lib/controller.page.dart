import 'package:flutter/cupertino.dart';

class ControllerPage extends ChangeNotifier {
  static ControllerPage instace = ControllerPage();

  bool dartTheme = false;
  changeTheme() {
    dartTheme = !dartTheme;
    notifyListeners();
  }
}

class SavePage {
  String name;
  String mail;
  String password;
  bool keepOn;

  SavePage({this.name, this.mail, this.password, this.keepOn});

  SavePage.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mail = json['mail'];
    password = json['password'];
    keepOn = json['KeepOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mail'] = this.mail;
    data['password'] = this.password;
    data['KeepOn'] = this.keepOn;
    return data;
  }

  String toString() {
    return "Name: " +
        this.name +
        "\nE-mail: " +
        this.mail +
        "\nPassword: " +
        this.password;
  }
}
