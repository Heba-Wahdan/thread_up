import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  //a method so I can use it later on with keyword instance instead of find
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(
          milliseconds: 600,
        ),
        curve: Curves.easeInOut);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.to(const LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
