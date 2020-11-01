import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_expert/vaccine/afterSix.dart';

class SkinCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Skin Care',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'COMMON SKIN DISEASES PHOTOS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.white24,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/1.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?rlz=1C1CHBF_enIN817IN817&sxsrf=ALeKk01I2pw543kvajszN566DVoWuFPd3w%3A1602314792156&ei=KGKBX9SOCb3H4-EPrd-Q2A4&q=acne+vulgaris+&oq=acne+vulgaris+&gs_lcp=CgZwc3ktYWIQAzIFCAAQyQMyCggAELEDEBQQhwIyAggAMgcIABAUEIcCMgQIABBDMgIIADICCAAyAggAMgIIADICCAA6BAgAEEdQkrcWWJK3FmC6xRZoAHACeACAAaEBiAGhAZIBAzAuMZgBAKABAaoBB2d3cy13aXrIAQjAAQE&sclient=psy-ab&ved=0ahUKEwjUwoTgv6nsAhW94zgGHa0vBOsQ4dUDCA0&uact=5#wptab=s:H4sIAAAAAAAAAONgVuLQz9U3yCovLHnE6Mgt8PLHPWEpi0lrTl5jNOLiCs7IL3fNK8ksqRRS4WKDsqS4eKTgmjQYpLi44DyeXUwc-WWpRWWZqeWLWHkTk_NSFcpKc9ITizKLARtzNGFrAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        child: Text(
                          'Acne (Acne vulgaris)',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black26,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/2.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=atopic+dermatitis+(eczema)&rlz=1C1CHBF_enIN817IN817&oq=Atopic+dermatitis+(Eczema)&aqs=chrome.0.0i457j0l3j0i22i30l4.862j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MKtIsix5xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1ilEkvyCzKTFVJSi3ITgZozixU0UpOrUnMTNQFNTdc_ewAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 40,
                        child: Text(
                          'Atopic dermatitis',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.black26,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/3.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=shingles+(herpes+zoster)&rlz=1C1CHBF_enIN817IN817&oq=Shingles+(Herpes+Zoster)&aqs=chrome.0.0i457j0l4j0i22i30l3.488j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MLI0NTd_xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1glijMy89JzUosVNDJSiwqAdFV-cUlqkSYA5tS5eXkAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          'Shingles(Herpes Zoster)',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white24,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/4.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=hives+(urticaria)&rlz=1C1CHBF_enIN817IN817&oq=Hives+(Urticaria)&aqs=chrome.0.0i457j0l4j0i22i30l3.672j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MM7LrjR-xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1gFMzLLUosVNEqLSjKTE4syEzUBzpRb7nIAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 40,
                        child: Text(
                          'Hives (Urticaria)',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.white24,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/5.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=Sunburn&rlz=1C1CHBF_enIN817IN817&oq=Sunburn&aqs=chrome..69i57j0i67l2j0i67i433j0i433j0l3.462j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MDQtzil4xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1jZg0vzkkqL8gApZdpgaAAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 40,
                        child: Text(
                          ' Sunburn',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black26,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/6.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?rlz=1C1CHBF_enIN817IN817&sxsrf=ALeKk00hVdZ43R1hgOs1C4x7CyHXtGdOfA:1602316223032&q=Contact+dermatitis&stick=H4sIAAAAAAAAAONgecQ4i5Fb4OWPe8JSExgnrTl5jbGTkYsrOCO_3DWvJLOkUkiNiw3KkuHileLUz9U3MDY2LyrTYJDi5kJwlYKN3HddmnaOzVGQAQg-_AlxkNLUEuJi9yz2yU9OzBGcWsJwQPT_e3stYS6OkMSK_Lz83EqwUqBieyVOTiC94LT3G3sthqZ9Kw6xsXAwCjDwLGIVcs7PK0lMLlFISS3KTQS6I7MYAK9QRZK1AAAA&sa=X&ved=2ahUKEwjhrKqKxansAhV6IbcAHeRkDMoQ6RMwFHoECBQQBA&biw=1280&bih=610#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MDY2Lyp7xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1iFnPPzShKTSxRSUotyE4G6M4sBjg9PSHMAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        child: Text(
                          'Contact Dermatitis',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.black26,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/7.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=diaper+rash&rlz=1C1CHBF_enIN817IN817&oq=Diaper+Rash&aqs=chrome.0.0i67i433i457j0i433j0l6.426j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MDItMit_xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1i5UzITC1KLFIoSizMAdR5unmwAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 30,
                        child: Text(
                          ' Diaper Rash',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white24,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/8.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=rosacea&rlz=1C1CHBF_enIN817IN817&oq=Rosacea&aqs=chrome.0.0i67i433i457j0i67l2j0j0i67j46i433j0i20i263j0.466j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3ME7OyK56xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1jZi_KLE5NTEwHZ-jT9aAAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 40,
                        child: Text(
                          'Rosacea',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.white24,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/9.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=athlete%27s+foot+(tinea+pedis)&rlz=1C1CHBF_enIN817IN817&oq=Athlete%27s+Foot+(Tinea+Pedis)&aqs=chrome.0.0i457j0i22i30l4j0i10i22i30j0i22i30l2.623j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MM4rNDV-xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1hlEksyclJLUtWLFdLy80sUNEoy81ITFQpSUzKLNQHx0wTCfQAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          '       Tinea Pedis',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black26,
                  width: (MediaQuery.of(context).size.width) / 2.1,
                  height: (MediaQuery.of(context).size.height -
                          AppBar().preferredSize.height) /
                      6,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                          'assests/10.jpg',
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          const url =
                              'https://www.google.com/search?q=basal+cell+carcinoma&rlz=1C1CHBF_enIN817IN817&oq=Basal+Cell+Carcinoma&aqs=chrome.0.0i67i433i457j0l7.512j0j7&sourceid=chrome&ie=UTF-8#wptab=s:H4sIAAAAAAAAAONgVuLUz9U3MDbOyip5xOjMLfDyxz1hKatJa05eYzTh4grOyC93zSvJLKkUUuNig7JkuHilELo0GKS4uRBcnl1MHPllqUVlmanli1hFkhKLE3MUklNzgERiUXJmXn5uIgDsmj6PdQAAAA';
                          launchURL(url);
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          'Basal Cell Carcinoma',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'OTHER THAN IS CONTACT NEARBY SKIN CARE CENTER',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
