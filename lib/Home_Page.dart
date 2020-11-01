// ignore: avoid_web_libraries_in_flutter

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_expert/Reusable_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_expert/child_care.dart';
import 'package:health_expert/nearby_hospital.dart';
import 'package:health_expert/skin_care.dart';
import 'package:health_expert/stepCounter.dart';
import 'package:health_expert/profile.dart';
import 'package:vibration/vibration.dart';
import 'createAcoount.dart';
import 'input_page.dart';
import 'forum.dart';
import 'emergency.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:health_expert/Icon_Content.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'user.dart';
import 'package:location/location.dart';

final userRef = FirebaseFirestore.instance.collection('users');
User currentUser;
final DateTime timestamp = DateTime.now();

// ignore: camel_case_types
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

final GoogleSignIn googleSignIn = GoogleSignIn();

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  final Color carbonBlack = Color(0xff1a1a1a);
  bool isAuth = false;
  @override
  void initState() {
    super.initState();
    googleSignIn.onCurrentUserChanged.listen((account) {
      handleSignIn(account);
    }, onError: (err) {
      print('$err');
    });
    googleSignIn.signInSilently(suppressErrors: false).then((account) {
      handleSignIn(account);
      turnOnLocation();
    }).catchError((err) {
      print('$err');
    });
  }

  turnOnLocation() async {
    var location = Location();
    bool enabled = await location.serviceEnabled();
    if (enabled == false) {
      await location.requestService();
    }
  }

  createUserInFirestore() async {
    final GoogleSignInAccount user = googleSignIn.currentUser;
    DocumentSnapshot doc = await userRef.doc(user.id).get();
    if (!doc.exists) {
      final username = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CreateAccount(),
        ),
      );
      userRef.doc(user.id).set({
        "id": user.id,
        "username": username,
        "photo url": user.photoUrl,
        "bio": "",
        "email": user.email,
        "display name": user.displayName,
        "time stamp": timestamp,
      });
      doc = await userRef.doc(user.id).get();
    }
    currentUser = User.fromDocument(doc);
    print(currentUser.username);
  }

  logout() {
    googleSignIn.signOut();
  }

  handleSignIn(GoogleSignInAccount account) {
    if (account != null) {
      createUserInFirestore();
      setState(() {
        isAuth = true;
      });
    } else {
      setState(() {
        isAuth = false;
      });
    }
  }

  login() {
    googleSignIn.signIn();
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? buildAuth() : buildUnAuth();
  }

  Scaffold buildAuth() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Expert',
            style: GoogleFonts.darkerGrotesque(fontSize: 40)),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            tooltip: 'PROFILE',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return profile(
                      profileId: currentUser?.id,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DailyStepsPage();
                        }),
                      );
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.shoePrints,
                      label: 'STEP COUNTER',
                    ),
                    colour: Colors.pink,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return NearbyHospitalScreen();
                        }),
                      );
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.hospital,
                      label: 'NEARBY HOSPITAL',
                    ),
                    colour: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () async {
                      await Vibration.vibrate(duration: 10000);
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.diagnoses,
                      label: 'MASSAGE MAKER',
                    ),
                    colour: Colors.pink,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return InputPage();
                        }),
                      );
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.calculator,
                      label: 'BMI CALCULATOR',
                    ),
                    colour: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return childCare();
                        }),
                      );
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.child,
                      label: 'CHILD CARE',
                    ),
                    colour: Colors.pink,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SkinCare();
                          },
                        ),
                      );
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.allergies,
                      label: 'SKIN CARE',
                    ),
                    colour: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Timer(
                        Duration(milliseconds: 200),
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Emergency();
                            },
                          ),
                        ),
                      );
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.firstAid,
                      label: 'EMERGENCY ALERT',
                    ),
                    colour: Colors.pink,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Forum();
                          },
                        ),
                      );
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.forumbee,
                      label: 'FORUM',
                    ),
                    colour: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Scaffold buildUnAuth() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'HEALTH EXPERT',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: login,
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black87)),
                child: Text(
                  ' SIGN IN ',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
