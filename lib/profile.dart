import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'Home_Page.dart';
import 'user.dart';

class profile extends StatefulWidget {
  final String profileId;
  profile({this.profileId});
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Profile', style: GoogleFonts.darkerGrotesque(fontSize: 40)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            getProfile(),
          ],
        ),
      ),
    );
  }

  getProfile() {
    return FutureBuilder(
        future: userRef.doc(widget.profileId).get(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          User user = User.fromDocument(snapshot.data);
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user.photourl),
                  radius: 50,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    user.displayname,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  onPressed: logout,
                  child: Text('LOGOUT'),
                )
              ],
            ),
          );
        });
  }

  logout() async {
    await googleSignIn.signOut();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => homePage(),
      ),
    );
  }
}
