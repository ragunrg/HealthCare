import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Forum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forum',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       RaisedButton(
      //         onPressed: () {
      //           const url = ('tel://${6382646582}');
      //           launchURL(url);
      //         },
      //         child: Text(
      //           'Contact Us',
      //           style: TextStyle(
      //             fontSize: 20,
      //           ),
      //         ),
      //         color: Colors.pink,
      //       ),
      //       RaisedButton(
      //         onPressed: () async {
      //           const whatsappUrl = "whatsapp://send?phone=${916382646582}";
      //           await canLaunch(whatsappUrl)
      //               ? launch(whatsappUrl)
      //               : print(
      //                   "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
      //         },
      //         child: Text(
      //           'Chat with us',
      //           style: TextStyle(
      //             fontSize: 20,
      //           ),
      //         ),
      //         color: Colors.pink,
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height) /
                  3,
              width: (MediaQuery.of(context).size.width),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'HEALTH EXPERT FORUM',
                    style: GoogleFonts.darkerGrotesque(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60.0, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DEVELOPERS CONTACT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  developer(
                    text: 'RAGU ',
                    ontap: () async {
                      const whatsappUrl =
                          "whatsapp://send?phone=${916382646582}";
                      await canLaunch(whatsappUrl)
                          ? launch(whatsappUrl)
                          : print(
                              "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                    },
                  ),
                  developer(
                    text: '#DROGI AJITH KUMAR  ',
                    ontap: () async {
                      const whatsappUrl =
                          "whatsapp://send?phone=${916383487549}";
                      await canLaunch(whatsappUrl)
                          ? launch(whatsappUrl)
                          : print(
                              "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                    },
                  ),
                  developer(
                    text: 'PRASANNA VENKATESH',
                    ontap: () async {
                      const whatsappUrl =
                          "whatsapp://send?phone=${918248385859}";
                      await canLaunch(whatsappUrl)
                          ? launch(whatsappUrl)
                          : print(
                              "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                    },
                  ),
                  developer(
                    text: 'ARAVINTH',
                    ontap: () async {
                      const whatsappUrl =
                          "whatsapp://send?phone=${918110804219}";
                      await canLaunch(whatsappUrl)
                          ? launch(whatsappUrl)
                          : print(
                              "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class developer extends StatelessWidget {
  final String text;
  final Function ontap;
  developer({this.text, this.ontap});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.cyan,
        ),
        onTap: ontap,
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 2,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
