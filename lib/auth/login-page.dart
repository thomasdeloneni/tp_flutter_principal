import 'package:flutter/material.dart';
import 'package:tp_flutter_principal/auth/login-form.dart';
import 'package:tp_flutter_principal/common/tweet-app-bar.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TweetAppBar(title: "Connexion"),
      body: LoginForm(),
    );
  }

}