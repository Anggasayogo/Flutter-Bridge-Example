import 'dart:async';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ExampleController extends GetxController{
  MethodChannel platformChannel = const MethodChannel('MyChannel');
  var isLoginLoaded = false.obs;
  RxString myString = "".obs;

  void updateString(String newString) {
    myString.value = newString;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }
  
  @override
  void onClose() {}
   
  myValues(){

  }

  void callDataFromNativeModules() async {
    try {
      final String result = await platformChannel.invokeMethod('getDataFromNative');
      updateString(result);
      print('Result from Native: $result');
    } on PlatformException catch (e) {
      print('Error:');
      // print('Error: ${e.message}');
    } 
  }
}