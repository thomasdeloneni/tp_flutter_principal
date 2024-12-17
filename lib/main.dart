import 'package:flutter/material.dart';
import 'package:tp_flutter_principal/content-body.dart';
import 'package:tp_flutter_principal/footer.dart';
import 'package:tp_flutter_principal/navbar.dart';

void main() {
  runApp(const TwitterApp());
}

class TwitterApp extends StatelessWidget {
  const TwitterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade400,
          title: Center(child: Text('Twitter', style: TextStyle(fontSize: 24, color: Colors.white))),
        ),
        body: Column(
          children: [
            Navbar(),
            Expanded(child:ContentBody()),
            Footer(),
          ],
        )
      ),
    );
  }
}

