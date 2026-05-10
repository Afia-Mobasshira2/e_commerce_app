

import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController  extends GetxController{
  static OnboardingController get instance => Get.find();

  //variable
final pageController = PageController();
Rx<int> currentPageIndex = 0.obs;

  //Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to the spacific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update current index & jump to next page
  void nextPage(){
    if(currentPageIndex.value ==2){
      Get.to(LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update current index & jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

}