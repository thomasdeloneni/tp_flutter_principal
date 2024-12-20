import 'package:flutter/material.dart';
import 'package:http/retry.dart';
import 'package:tp_flutter_principal/models/tweet.dart';
import '../common/tweet-app-bar.dart';
import 'content-body.dart';
import 'footer.dart';
import 'header.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class TweetyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? email = ModalRoute.of(context)!.settings.arguments as String?;
    List<Tweet> tweets = [];

    return Scaffold(
      appBar: TweetAppBar(title: "Tweety !", email: email),
      body: Column(
        children: [
          Header(),
          Expanded(
            child: FutureBuilder<http.Response>(
                future: http.get(Uri.parse(
                    'https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json')),
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data?.body! != null) {
                    var body = snapshot.data?.body;
                    var json = convert.jsonDecode(body!);
                    tweets = List<Tweet>.from(
                        json.map((model) => Tweet.fromJson(model)));
                    return ListView.builder(
                      itemCount: tweets.length,
                      itemBuilder: (context, index) {
                        return ContentBody(tweets[index]);
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
          Footer()
        ],
      ),
    );
  }
}
