import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final crousalCurrentIndex = 0.obs;
   void updatePageIndicator(index) {
    crousalCurrentIndex.value = index;
   }
}