import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:health_expert/Home_Page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'splash.dart';
import 'package:location/location.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox<int>('steps');
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(BMICalculator());
  });
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return MaterialApp(
      theme: darkModeOn
          ? ThemeData.dark().copyWith(
              primaryColor: Color(0xFF12153B),
              scaffoldBackgroundColor: Color(0xFF0C1234),
            )
          : ThemeData.light(),
      home: SplashScreen(),
    );
  }
}
