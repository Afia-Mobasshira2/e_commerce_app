import 'dart:ffi';

import 'package:get/get.dart';

class OnboardingController  extends GetxController{
  static OnboardingController get instance => Get.find();

  //variable

  //Update current index when page scroll
  void updatePageIndicator(index){}

  //jump to the spacific dot selected page
  void dotNavigationClick(index){}

  //Update current index & jump to next page
  void nextPage(){}

  //Update current index & jump to last page
  void skipPage(){}

}