import 'package:example2/ui/controller/example_controller.dart';
import 'package:get/get.dart';

class ExampleScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExampleController());
  }
}
