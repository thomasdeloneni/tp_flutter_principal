import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  final String authorName;
  final String authorId;
  final String date;
  final String content;
  final String imageUrl;

  TweetCard({
    required this.authorName,
    required this.authorId,
    required this.date,
    required this.content,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imageUrl,
                  width: 125,
                  height: 125,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authorName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('@$authorId'),
                      Text(date),
                      SizedBox(height: 10),
                      Text(content),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                  },
                  child: Text('Répondre'),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text('Retweet'),
                ),
                TextButton(
                  onPressed: () {
                  },
                  child: Text('Favoris'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
