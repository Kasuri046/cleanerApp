import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_assets.dart';

class TestDart extends StatefulWidget {
  const TestDart({super.key});

  @override
  State<TestDart> createState() => _TestDartState();
}

class _TestDartState extends State<TestDart> with SingleTickerProviderStateMixin {


  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Animation duration
      vsync: this,
    );

    // Create a Tween to animate from 0 to 0.38
    _animation = Tween<double>(begin: 0, end: 0.38).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    // Start the animation
    _controller.forward();
  }

  void _restartAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    final List<String> imagePath = [
      'assets/images/group.png',
      'assets/images/securitybox.png',
      'assets/images/scanvirus.png',
      'assets/images/groupbattery.png',
    ];

    final List<String> name = [
      'Cleaner',
      'Security',
      'Scan Virus',
      'Battery'
    ];

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // double radius = (screenWidth + screenHeight) * 0.05;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            //First One
            Row(
              children: [
                Text(
                  "Mobile Cleaner App",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                Spacer(),
                ImageIcon(
                  AssetImage('assets/images/frame1.png'),
                  size: 40,
                  color: Color.fromRGBO(148, 58, 251, 1),
                ),
                ImageIcon(
                  AssetImage('assets/images/frame.png'),
                  size: 40,
                  color: Color.fromRGBO(148, 58, 251, 1),
                )
              ],
            ),
            //Second One
            SizedBox(
              height: 20,
            ),

            Container(
              width: screenWidth,
              height: screenWidth > 700
                  ? screenHeight * 0.32 + 60
                  : screenHeight * 0.32, // Adjusts height based on screen width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  //Purple Colour Container
                  Container(
                    width: screenWidth,
                    height: screenWidth > 700
                        ? screenHeight * 0.28 + 50
                        : screenHeight * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(246, 239, 255, 1),
                    ),
                  ),
                  //White Circle Container and Image Inside Container
                  Positioned(
                      top: screenWidth > 700
                          ? screenHeight * 0.06
                          : screenHeight * 0.04,
                      left: screenWidth > 700
                          ? screenWidth * 0.10
                          : screenWidth * 0.08,
                      child: CircleAvatar(
                          radius: screenWidth > 700 ? 90 : 65,
                          backgroundColor: Colors.white,
                          child: Stack(
                            children: [
                              //Image
                              Center(
                                  child: Image.asset(
                                      AppAssets.paintImage)),
                              //Indicator
                              Center(
                                child: SizedBox(
                                  height: screenWidth > 700 ? 140 : 100,
                                  width: screenWidth > 700 ? 140 : 100,
                                  child: CircularProgressIndicator(
                                    color: Color.fromRGBO(
                                        175, 107, 255, 1),
                                    backgroundColor: Color.fromRGBO(
                                        246, 239, 255, 1),
                                    value: 0.45,
                                    strokeWidth: 10,
                                  ),
                                ),
                              )
                            ],
                          ))),
                  //White Box Near White Container
                  Positioned(
                      top: screenWidth > 700
                          ? screenHeight * 0.10
                          : screenHeight * 0.08,
                      left: screenWidth > 700
                          ? screenWidth * 0.65
                          : screenWidth * 0.50,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        width: screenWidth > 700 ? 200 : 150,
                        height: screenWidth > 700 ? 120 : 80,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: screenWidth > 700 ? 20 : 5,
                              left: screenWidth > 700 ? 20 : 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Color.fromRGBO(
                                        175, 107, 255, 1),
                                    size: screenHeight * 0.04,
                                  ),
                                  Container(
                                    width: 5,
                                  ),
                                  const Text(
                                    "50",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const Text(
                                    "%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            175, 107, 255, 1),
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              const Text(
                                "Storage Used",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "11.40GB/22.80GB",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )
                            ],
                          ),
                        ),
                      )),
                  //Button
                  Positioned(
                      top: screenWidth > 700
                          ? screenHeight * 0.31
                          : screenHeight * 0.25,
                      left: screenWidth > 700
                          ? screenWidth * 0.40
                          : screenWidth * 0.33,
                      child: GestureDetector(
                        onTap: () {
                          _restartAnimation();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.07,
                              vertical: screenHeight * 0.015),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(
                                  175, 107, 255, 1),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                const BoxShadow(
                                  color: Color.fromRGBO(
                                      141, 45, 255, 0.25),
                                  spreadRadius: 0,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: const Center(
                              child: Text(
                                "Clean Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                      )),
                ],
              ),
            ),

            ///
            /////// Extra
            Expanded(
                child: GridView.builder(
                    itemCount: imagePath.length,
                    gridDelegate: screenWidth < 700
                        ? SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2)
                        : SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 2),
                            margin: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(children: [
                              Image.asset(
                                imagePath[index],
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Text(
                                  '${name[index]}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ));
                    })),
          ],
        ),
      ),
    );
  }
}
