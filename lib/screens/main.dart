import 'package:cleanerapp/navpages/navpage.dart';
import 'package:cleanerapp/screens/my_home_page_2.dart';
import 'package:cleanerapp/utils/app_assets.dart';
import 'package:device_preview/device_preview.dart';
import 'my_home_page_3.dart';
import 'Splash_Screen.dart';
import 'my_home_page_4.dart';
import 'package:cleanerapp/screens/practice.dart';
import 'package:flutter/services.dart';
import 'my_home_page_1.dart';
import 'package:flutter/material.dart';

void main() {
  // DevicePreview(builder: (context) => const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: SplashScreen(),
    );
  }
}


