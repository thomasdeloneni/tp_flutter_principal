

import 'package:flutter/material.dart';

class ContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('images/ordi.jpg', width: 125, height: 125, fit: BoxFit.cover),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("LaCrevette@Chocolate"),
                      Text('50s')
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    "lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac ante nec nisl fringilla tincidunt")
                ]),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Répondre"),
                Text("Retweet"),
                Text("Favoris")
              ]
            ),
          ),
      ]
    );
  }
}