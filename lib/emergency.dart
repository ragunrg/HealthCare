import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_expert/vaccine/afterSix.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class Emergency extends StatefulWidget {
  @override
  _EmergencyState createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  TextEditingController controller = TextEditingController();
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterOpenWhatsapp.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Timer(
              Duration(seconds: 1),
              () => Navigator.pop(context),
            );
            FocusManager.instance.primaryFocus.unfocus();
          },
        ),
        title: Text(
          'Emergency alert',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 40,
              child: GestureDetector(
                child: SvgPicture.asset(
                  'assests/safety-43931.svg',
                ),
                onTap: () {
                  const url = ('tel://${112}');
                  launchURL(url);
                },
              ),
            ),
            Text(
              'Click above image to emergency call',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: controller,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  controller.clear();
                                },
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter the emergency text'),
                          onFieldSubmitted: sendMessage,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  sendMessage(String message) {
    FlutterOpenWhatsapp.sendSingleMessage("916382646582", message);
    setState(() {
      controller.clear();
    });
  }
}
