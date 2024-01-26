import 'package:example2/ui/controller/example_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExampleController exampleController = Get.find<ExampleController>();

    return Scaffold(
      body: Obx(() => exampleController.isLoginLoaded.value
      ? Text("Loading")
      : Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                exampleController.myString.value,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffF18265)
              ),
              onPressed: () => exampleController.callDataFromNativeModules(), 
              child: const Center(
                child: Center(
                  child: Text(
                    "Get Data From Native",
                     style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              )
            ),
            )
          ],
        )
      ))
    );
  }
}