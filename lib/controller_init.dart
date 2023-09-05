import 'package:flutter_property2/counter_controller.dart';
import 'package:get/get.dart';

class ControllerInit implements Bindings {
  @override
  void dependencies() {
    Get.put(CounterController(), permanent: true);
  }
}
