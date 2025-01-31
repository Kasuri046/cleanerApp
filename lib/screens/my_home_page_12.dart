import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage12 extends StatefulWidget {
  const MyHomePage12({super.key});

  @override
  State<MyHomePage12> createState() => _MyHomePage12State();
}

class _MyHomePage12State extends State<MyHomePage12> {

  bool isSecuritySettingActive = true;


  void _toggleSetting() {
    setState(() {
      isSecuritySettingActive = !isSecuritySettingActive;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 251,
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
                    top: 30      ,
                    left: 80,
                    child: Text('Automatic Virus Scanning',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),),
                  Positioned(
                    top: 85,
                    left: 155,
                    child: Image.asset('assets/images/screentwelve.png',width: 90,height: 90,),
                  ),
                  Positioned(
                      top: 210,
                      left: 55,
                      child: Text(
                        'Automatically scan virus regularly in background',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 13),)
                  ),
                ]
            ),
          ),


          SizedBox(height: 20,),


      Container(
        height: 45,
        width: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(230, 230, 230, 1),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: _toggleSetting,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 45,
                width: isSecuritySettingActive ? 135 : 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: isSecuritySettingActive ? const Color.fromRGBO(148, 58, 254, 1) : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    'Security Setting',
                    style: TextStyle(
                      color: isSecuritySettingActive ? Colors.white : const Color.fromRGBO(148, 58, 154, 1),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ), // End of first GestureDetector
            GestureDetector(
              onTap: _toggleSetting,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 45,
                width: isSecuritySettingActive ? 105 : 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: isSecuritySettingActive ? Colors.transparent : const Color.fromRGBO(148, 58, 254, 1),
                ),
                child: Center(
                  child: Text(
                    'Security Reports',
                    style: TextStyle(
                      color: isSecuritySettingActive ? const Color.fromRGBO(148, 58, 154, 1) : Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ), // End of second GestureDetector
          ],
        ),
      ),
        ],
      ),

    ) ;
  }
}
