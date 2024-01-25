import 'dart:async';

import 'package:example2/ui/view/home_screen.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var isLoginLoaded = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    // Timer(const Duration(seconds: 3), (){
    //   Get.to(HomeScreen());
    // });
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }
  
  @override
  void onClose() {}

  goNextBang(){
    Get.to(HomeScreen());
  }

}