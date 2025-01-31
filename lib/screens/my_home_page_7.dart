import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/app_assets.dart';

class MyHomePage7 extends StatefulWidget {
  const MyHomePage7({super.key});

  @override
  State<MyHomePage7> createState() => _MyHomePage7State();
}

class _MyHomePage7State extends State<MyHomePage7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 281,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                color: Color.fromRGBO(175, 107, 255, 1)
            ),
            child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 20,
                    child:
                    Icon(Icons.arrow_back,size: 30,weight: 400,color: Colors.white,),
                  ),
                  Positioned(
                    top: 50,
                    left: 160,
                    child: Image.asset('assets/images/screensix.png',width: 90,height: 90,),
                  ),
                  Positioned(
                    top: 135,
                    left: 115,
                    child: Text('Automatic Cleaning',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),),
                  Positioned(
                      top: 170,
                      left: 50,
                      child: Text(
                        'Set up automatic cleaning according to the time you',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 12),)
                  ),
                  Positioned(
                      top: 185,
                      left: 160,
                      child: Text(
                        'freely choose.',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 12),)
                  ),
                  Positioned(
                      top: 220,
                      left: 150,
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 42,
                          width: 91,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(42),
                              color: Colors.white
                          ),
                          child: Center(child: Text('Try Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color.fromRGBO(148, 58, 254, 1)),),),
                        ),
                      )),
                ]
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 348,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                width: 3,
              ),
            ),
            child: Padding(
              padding:  EdgeInsets.only(top: 10,right: 15,left: 10,bottom: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                      width: 50,
                      child: Image.asset(AppAssets.screenseven),
                  ),
                  Text('Scan Virus',style: TextStyle(fontWeight: FontWeight.w600),),
                  Expanded(child: Text(''),),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 65,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(175, 107, 255, 1)
                      ),
                      child: Center(child: Text('Grant',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
