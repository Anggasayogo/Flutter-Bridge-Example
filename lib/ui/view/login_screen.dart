import 'package:example2/ui/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find<LoginController>();

    return Scaffold(
      body: Obx(() => loginController.isLoginLoaded.value
          ? Text('Loading')
          : Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Center(
                      child: InkWell(
                        onTap: () => loginController.goNextBang(),
                        child: Text('Hello World!'),
                      ),
                    ),
                  )
                ],
              ),
            )),
    );
  }
}
