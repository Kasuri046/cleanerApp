import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MyHomePage3 extends StatefulWidget {
  const MyHomePage3({super.key});

  @override
  State<MyHomePage3> createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {
  List<bool> isChecked = [false, false, false, false, false];

  final List<String> vname = [
    'Ad junk',
    'Residual junk',
    'Tumo junk',
    'Log Junk',
    'Album junk'
  ];

  final List<String> tname = [
    '0.00 KB',
    '15.00 KB',
    '0.00 KB',
    '35.00 KB',
    '0.00 KB'
  ];



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              size: 30,
              color: Color.fromRGBO(175, 107, 255, 1),
            ),
            SizedBox(
              width:
              screenWidth > 700 ? screenWidth * 0.45 : screenWidth * 0.30,
            ),
            Text(
              "Cleaner",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color.fromRGBO(148, 58, 251, 1),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          children: [

            Container(
              width: screenWidth,
              height: screenWidth > 700
                  ? screenHeight * 0.31 + 60
                  : screenHeight * 0.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(246, 239, 255, 1),
              ),
              child: Stack(
                alignment: Alignment.center, // Centers all children within the Stack
                children: [
                  // Centered white circular container with the progress indicator inside
                  Center(
                    child: Container(
                      height: screenWidth > 700 ? 190 : 140,
                      width: screenWidth > 700 ? 190 : 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SizedBox(
                          height: screenWidth > 700 ? 190 : 140,
                          width: screenWidth > 700 ? 190 : 140,
                          child: const CircularProgressIndicator(
                            color: Color.fromRGBO(175, 107, 255, 1),
                            backgroundColor: Color.fromRGBO(246, 239, 255, 1),
                            value: 1,
                            strokeWidth: 15,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Centered progressive dots animation
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth > 700 ? 40 : 45),
                      child: Text(
                        'COMPLETE',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(148, 58, 254, 1),
                        ),
                      ),
                    ),
                  ),

                  // Centered "SCANNING" text below the progressive dots
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth > 700 ? 0.50 : 0.10),
                      child: Text(
                        '50 KB',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Color.fromRGBO(148, 58, 254, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Container(
              height: screenWidth > 700 ? screenHeight * 0.40 : screenHeight * 0.48,
              // color: Colors.black.withOpacity(0.6),
              width: screenWidth,
              // color: Colors.black.withOpacity(0.5),
              child: Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: vname.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                          padding:
                          const EdgeInsets.only(left: 10, top: 4, bottom: 4),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/screentwo.png'),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  vname[index],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Color.fromRGBO(148, 58, 254, 1)),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                tname[index],
                                style: TextStyle(color: Color.fromRGBO(148, 58, 254, 1)),
                              ),
                              Checkbox(
                                value: isChecked[index],
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked[index] = value ?? false;
                                  });
                                },
                                activeColor: Color.fromRGBO(148, 58, 254, 1),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                    width: 2, color: Color.fromRGBO(148, 58, 254, 1)),
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,)
                      ],
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 15),
            // Adjusted to maintain spacing
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage3()),
                );
              },
              child: Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(175, 107, 255, 1),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(175, 107, 255, 1),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(
                  child: Text(
                    "Clean Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
