import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/app_assets.dart';

class MyHomePage6 extends StatelessWidget {
  const MyHomePage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Color.fromRGBO(148, 58, 254, 1),
          child: Stack(
            children: [
              Positioned(
                top: 240,
                left: 70,
                child: Center(
                  child: Image.asset('assets/images/screensix.png',fit: BoxFit.cover,width: 250,height: 250,),
                ),
              ),
              Positioned(
                top: 497,
                  left: 150,
                  child: Container(
                height: 42,
                width: 91,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(42),
                  color: Colors.white
                ),
                    child: Center(child: Text('Done',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color.fromRGBO(148, 58, 254, 1)),),),
              ))
            ],
          ),
        )
    );
  }
}
