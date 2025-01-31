import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage10 extends StatefulWidget {
  const MyHomePage10({super.key});

  @override
  State<MyHomePage10> createState() => _MyHomePage10State();
}

class _MyHomePage10State extends State<MyHomePage10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(175, 107, 255, 1),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Colors.white

              ),
            ),
          ),
          Center(
            child: Text('1 App',style: TextStyle(color: Color.fromRGBO(148, 58, 254, 1),fontSize: 24,fontWeight: FontWeight.w600),),
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
              ),
              child: CircularProgressIndicator(
                value: 0.50,
                color: Colors.white,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
                strokeWidth: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
