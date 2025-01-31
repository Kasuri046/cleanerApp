import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_assets.dart';

class MyHomePage5 extends StatelessWidget {
  const MyHomePage5({super.key});

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
                  top: 280,
                  left: 105,
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Color.fromRGBO(148, 58, 254, 1),
                      border: Border.all(
                        color: Colors.white,
                        width: 7
                      )
                    ),

              )),
              Center(
                child: Image.asset('assets/images/screenfive.png',fit: BoxFit.cover,width: 104,height: 142,),
              ),
              Positioned(
                top: 280,
                left: 197,
                child: Image.asset('assets/images/screenfivetwo.png',fit: BoxFit.cover,width: 88,height: 90,),)
            ],
          ),
        )
    );
  }
}
