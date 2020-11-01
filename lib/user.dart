import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String username;
  final String photourl;
  final String email;
  final String bio;
  final String displayname;

  User(
      {this.id,
      this.username,
      this.photourl,
      this.email,
      this.bio,
      this.displayname});
  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
        id: doc['id'],
        bio: doc['bio'],
        displayname: doc['display name'],
        email: doc['email'],
        photourl: doc['photo url'],
        username: doc['username']);
  }
}
