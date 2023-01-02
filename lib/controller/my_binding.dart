import 'package:get/get.dart';
import 'package:getx_tutorial/controller/my_controller.dart';
import 'package:getx_tutorial/controller/my_servide.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
    Get.lazyPut(() => MyService());
  }
}
