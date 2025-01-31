import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navpages/navpage.dart';

class MyHomePage8 extends StatefulWidget {
  const MyHomePage8({super.key});

  @override
  State<MyHomePage8> createState() => _MyHomePage8State();
}

class _MyHomePage8State extends State<MyHomePage8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          children: [
              Positioned(
              top: 45,
              left: 25,
              child:  Icon(Icons.arrow_back,size: 30,weight: 400,color: Colors.white,))],
        ),
        backgroundColor: Color.fromRGBO(175, 107, 255, 1),
        title: Container(
            width: 68,
            height: 20,
            child: Text('Security',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),
        centerTitle: true,

      ),
      backgroundColor: Color.fromRGBO(175, 107, 255, 1),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
          ),
          Center(
            child: Image.asset('assets/images/screeneight.png',fit: BoxFit.cover,width: 150,height: 140,),
          ),
          SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Scanning the app list',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
              SizedBox(width: 20,),
              Image.asset('assets/images/eight.png',fit: BoxFit.cover,width: 30,height: 20,),
            ],
          )
        ],
      ),
    );
  }
}
