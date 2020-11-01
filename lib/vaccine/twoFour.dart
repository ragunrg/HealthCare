import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class twoFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Between 2 to 4 Month',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://www.google.com/search?rlz=1C1CHBF_enIN817IN817&sxsrf=ALeKk023JtXMKjGF7z429tZm4BVEP7auZg:1599576357552&q=Rotavirus&spell=1&sa=X&ved=2ahUKEwiS19Sk5tnrAhWK93MBHVFsDfUQBSgAegQIKRAo&biw=1280&bih=610';
                    launchURL(url);
                  },
                  child: Text(
                    'Rota Virus',
                    style: TextStyle(fontSize: 25, color: Colors.green[300]),
                  ),
                ),
                Column(
                  children: [
                    Text(' -1st dose on 2nd month'),
                    Text(' -2nd dose on 4th month'),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.white24,
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        const url =
                            'https://www.google.com/search?q=dtap&rlz=1C1CHBF_enIN817IN817&oq=dtap&aqs=chrome..69i57j0l6j69i60.2058j0j7&sourceid=chrome&ie=UTF-8';
                        launchURL(url);
                      },
                      child: Text(
                        'Diphtheria,tetanus &',
                        style:
                            TextStyle(fontSize: 25, color: Colors.green[300]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        const url =
                            'https://www.google.com/search?q=dtap&rlz=1C1CHBF_enIN817IN817&oq=dtap&aqs=chrome..69i57j0l6j69i60.2058j0j7&sourceid=chrome&ie=UTF-8';
                        launchURL(url);
                      },
                      child: Text(
                        ' acellular pertussis(dtap)',
                        style:
                            TextStyle(fontSize: 25, color: Colors.green[300]),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '-1st dose on 2nd month',
                    ),
                    Text(' -2nd dose on 4th month'),
                  ],
                ),
              ],
            ),
            Divider(
              height: 1,
              color: Colors.white24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://www.google.com/search?q=haemophilus+influenzae+b&rlz=1C1CHBF_enIN817IN817&oq=Haemophilus+influenzae+b&aqs=chrome.0.0j46j0l6.504j0j7&sourceid=chrome&ie=UTF-8';
                    launchURL(url);
                  },
                  child: Text(
                    'Haemophilus influenzae b',
                    style: TextStyle(fontSize: 25, color: Colors.green[300]),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      ' -1st dose on 2nd month',
                    ),
                    Text(' -2nd dose on 4th month'),
                  ],
                ),
              ],
            ),
            Divider(
              height: 1,
              color: Colors.white24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://www.google.com/search?q=Pneumococcal+conjugate&rlz=1C1CHBF_enIN817IN817&oq=Pneumococcal+conjugate&aqs=chrome..69i57j0l7.574j0j7&sourceid=chrome&ie=UTF-8';
                    launchURL(url);
                  },
                  child: Text(
                    'Pneumococcal conjugate',
                    style: TextStyle(fontSize: 25, color: Colors.green[300]),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      ' -1st dose on 2nd month ',
                    ),
                    Text('-2nd dose on 4th month'),
                  ],
                ),
              ],
            ),
            Divider(
              height: 1,
              color: Colors.white24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://www.google.com/search?q=inactivated+poliovirus&rlz=1C1CHBF_enIN817IN817&oq=Inactivated+poliovirus&aqs=chrome.0.0l8.523j0j7&sourceid=chrome&ie=UTF-8';
                    launchURL(url);
                  },
                  child: Text(
                    'Inactivated poliovirus ',
                    style: TextStyle(fontSize: 25, color: Colors.green[300]),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '-1st dose on 2nd month',
                    ),
                    Text(' -2nd dose on 4th month'),
                  ],
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
