import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateIndicator(index) {
    currentIndex.value = index;
  }
}
