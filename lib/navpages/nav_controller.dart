import 'dart:developer';

import 'package:get/get.dart';

class NavController extends GetxController {

  RxInt currentIndex = 0.obs;

  void onTap(int index) {
    log('this is my ontap');
    currentIndex.value = index;
  }
}
