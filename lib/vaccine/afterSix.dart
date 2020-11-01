import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class afterSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'After 6th Month',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=hepatitis+b&rlz=1C1CHBF_enIN817IN817&oq=hepatitis&aqs=chrome.2.69i57j0l7.4399j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Hepatitis B ',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                ' -3rd dose',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                color: Colors.white24,
                height: 1,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=dtap&rlz=1C1CHBF_enIN817IN817&oq=dtap&aqs=chrome.0.69i59j0l6j69i60.1548j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Diphtheria, tetanus, & acellular pertussis(dtap)',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                '-3rd dose on 6nd month -4th dose after 12th month',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=haemophilus+influenzae+type+b&rlz=1C1CHBF_enIN817IN817&oq=Haemophilus+influenzae+type+b&aqs=chrome.0.0j46j0l6.799j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Haemophilus influenzae type b',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                ' -3rd dose on or after 12th month',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=Pneumococcal+conjugate&rlz=1C1CHBF_enIN817IN817&oq=Pneumococcal+conjugate&aqs=chrome..69i57j0l7.574j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Pneumococcal conjugate',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                ' -3rd dose on 6nd month -4th dose on or after 12th month',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=inactivated+poliovirus&rlz=1C1CHBF_enIN817IN817&oq=Inactivated+poliovirus&aqs=chrome.0.35i39j0l7.613j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Inactivated poliovirus ',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                '-3rd dose after 6 month',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=influenza&rlz=1C1CHBF_enIN817IN817&oq=Influenza&aqs=chrome.0.0l6j46j0.488j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Influenza',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                'Annual vaccination 1 or 2 doses',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=Measles%2C+mumps%2C+rubella&rlz=1C1CHBF_enIN817IN817&oq=Measles%2C+mumps%2C+rubella&aqs=chrome..69i57j0l7.581j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Measles, mumps, rubella',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                '1 st dose after 12th month',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=Varicella&rlz=1C1CHBF_enIN817IN817&oq=Varicella&aqs=chrome..69i57.505j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Varicella',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                '1 st dose after 12th month',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://www.google.com/search?q=hepatitis+a&rlz=1C1CHBF_enIN817IN817&oq=Hepatitis+A&aqs=chrome.0.0l8.778j0j7&sourceid=chrome&ie=UTF-8';
                  launchURL(url);
                },
                child: Text(
                  'Hepatitis A',
                  style: TextStyle(fontSize: 30, color: Colors.green[300]),
                ),
              ),
              Text(
                '2 dose series after 12th month',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white24,
              ),
            ],
          ),
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
