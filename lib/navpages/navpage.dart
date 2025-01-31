import 'dart:developer';
import 'package:cleanerapp/navpages/nav_controller.dart';
import 'package:cleanerapp/screens/my_home_page_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/My_Home_Page_3.dart';
import '../screens/my_home_page_6.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {

  final navController = Get.put(NavController());

  List pages = [
    const MyHomePage(),
    const MyHomePage6(),
    const MyHomePage3(),
  ];



  @override
  Widget build(BuildContext context) {
    log('this is build');
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          body: pages[navController.currentIndex.value],
          bottomNavigationBar: Container(
            padding: const EdgeInsets.all(10),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, -1),
                ),
              ],
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent, // Disable the splash color
                highlightColor: Colors.transparent, // Disable the highlight color
                hoverColor: Colors.transparent, // Disable the hover color
              ),
              child: BottomNavigationBar(
                currentIndex: navController.currentIndex.value,
                onTap: navController.onTap,
                type: BottomNavigationBarType.shifting,
                // backgroundColor: Colors.transparent,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedFontSize: 0,
                unselectedFontSize: 0,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 95,
                      height: 40,
                      decoration: navController.currentIndex.value == 0
                          ? BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromRGBO(175, 107, 255, 1),
                      )
                          : null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(AssetImage('assets/images/homeicon.png'),size: 30,),
                          if (navController.currentIndex.value == 0) ...[
                            const SizedBox(width: 1),
                            const Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 95,
                      height: 40,
                      decoration: navController.currentIndex.value == 1
                          ? BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromRGBO(175, 107, 255, 1),
                      )
                          : null,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ImageIcon(AssetImage('assets/images/navigation2.png'),size: 20,),
                            if (navController.currentIndex.value == 1) ...[
                              const SizedBox(width: 6),
                              const Text(
                                "Menu",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      width: 95,
                      height: 40,
                      decoration: navController.currentIndex.value == 2
                          ? BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromRGBO(175, 107, 255, 1),
                      )
                          : null,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.settings,size: 22,),
                            // ImageIcon(AssetImage('assets/images/settingicon.png'),size: 30,),
                            if (navController.currentIndex.value == 2) ...[
                              const SizedBox(width: 4),
                              const Text(
                                "Setting",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

