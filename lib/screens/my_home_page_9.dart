import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import 'my_home_page_6.dart';

class MyHomePage9 extends StatefulWidget {
  const MyHomePage9({super.key});

  @override
  State<MyHomePage9> createState() => _MyHomePage9State();
}

class _MyHomePage9State extends State<MyHomePage9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 231,
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
                      top: 35,
                        left: 170,
                        child: Text('Security',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),)),
                    Positioned(
                      top: 130,
                      left: 155,
                      child: Text('2 Apps',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),),
                    Positioned(
                        top: 165,
                        left: 100,
                        child: Text(
                          'Select Application to be Scanned',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 12),)
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,
              width: 370,
              child: Row(
                children: [
                  Text('Selected All',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                  Expanded(child: Text('')),
                  Image.asset('assets/images/screennine.png',width: 30,height: 30,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 348,
              height: 55,
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
                    Image.asset(AppAssets.instagram,height: 40,width: 40,),
                    Text('Instagram',style: TextStyle(fontWeight: FontWeight.w600),),
                    Expanded(child: Text(''),),
                    Image.asset('assets/images/screennine.png',width: 30,height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 348,
              height: 55,
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
                    Image.asset(AppAssets.youtube,height: 40,width: 40,),
                    Text('YouTube',style: TextStyle(fontWeight: FontWeight.w600),),
                    Expanded(child: Text(''),),
                    Image.asset('assets/images/screennine.png',width: 30,height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage6() ));
              },
              child: Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(175, 107, 255, 1),
                    boxShadow: [
                      const BoxShadow(
                          color: Color.fromRGBO(141, 45, 200, 0.25),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0,0)
                      )
                    ],
                    borderRadius: BorderRadius.circular(100)
                ),
                child: const Center(child: Text("Security Scan",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),)),
              ),
            )

          ],
        )
    );
  }
}
