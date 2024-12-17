
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  String label;
  bool isActive;
  FooterButton(this.label, {this.isActive = false});


  Color getColor() {
    return isActive ? Color(0xFF58B0F0) : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, 
            child:Text(label, style: TextStyle(color: getColor(), fontSize: 12))
            );
  }}


class Footer extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FooterButton('Fil', isActive: true),
                FooterButton('Notification'),
                FooterButton('Messages'),
                FooterButton('Moi'),
              ],
            ),
          );
  }

}