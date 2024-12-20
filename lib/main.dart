import 'package:flutter/material.dart';
import 'package:tp_flutter_principal/auth/login-page.dart';
import 'package:tp_flutter_principal/tweet/tweet-page.dart';

void main() {
  runApp(const TwitterApp());
}

class TwitterApp extends StatelessWidget {
  const TwitterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Twitter',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent)),
        routes: {
          "/": (context) => LoginPage(),
          "/tweets": (context) => TweetyPage(),
        },
        initialRoute: "/");
  }
}
