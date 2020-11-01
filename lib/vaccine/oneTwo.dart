import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class oneTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Between 1 to 2 Month',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://www.google.com/search?q=hepatitis+b&rlz=1C1CHBF_enIN817IN817&oq=hepatitis&aqs=chrome.2.69i57j0l7.4399j0j7&sourceid=chrome&ie=UTF-8';
                    launchURL(url);
                  },
                  child: Text(
                    'Hepatitis B(HepB)',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                Text(
                  ' -2nd dose',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
