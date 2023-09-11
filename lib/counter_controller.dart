import 'package:get/get.dart';

class CounterController extends GetxController {
  final RxInt count = 0.obs;
  int count2 = 0;

  void increment() {
    count.value++;
    count2++;
    update();
  }
}


// Obx/Getx => Stream      => Reactive
// GetBuilder => update(); -> refrection
// https://stackoverflow.com/questions/67121941/flutter-get-when-to-use-getxcontroller-getbuildercontroller-or-obx 