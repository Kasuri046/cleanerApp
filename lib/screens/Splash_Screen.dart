import 'dart:async';
import 'package:cleanerapp/navpages/navpage.dart';
import 'package:cleanerapp/screens/main.dart';
import 'package:cleanerapp/utils/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(context,
           MaterialPageRoute(
            builder: (context) => const NavPage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(175, 107, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.brushImage),
            Text("Phone Cleaner",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
          ],
        ),
      )
    );
  }
}
