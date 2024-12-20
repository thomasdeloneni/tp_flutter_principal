class Tweet {
  int? id;
  String? profile;
  DateTime? createdDate;
  String? author;
  String? message;

  Tweet({this.id, this.profile, this.createdDate, this.author, this.message});

  Tweet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profile = json['profile'];
    createdDate = DateTime.fromMillisecondsSinceEpoch(json['created_date'] * 1000);
    author = json['author'];
    message = json['message'];
  }
}