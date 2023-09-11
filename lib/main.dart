import 'package:flutter/material.dart';
import 'package:flutter_property2/counter_controller.dart';
import 'package:flutter_property2/page2.dart';
import 'package:get/get.dart';

import 'controller_init.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Property2.0',
      initialBinding: ControllerInit(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterController = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXFlutter"),
      ),
      // body: Obx(
      //   () {
      //     return Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text("${counterController.count.value}"),
      //           const SizedBox(height: 20),
      //           ActionChip(
      //             label: const Text("Increment"),
      //             onPressed: () {
      //               counterController.increment();
      //             },
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      // ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder(
              init: Get.find<CounterController>(),
              builder: (counterController) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${counterController.count2}"),
                      const SizedBox(height: 20),
                      ActionChip(
                        label: const Text("Increment"),
                        onPressed: () {
                          print('Hello');
                          counterController.increment();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ActionChip(
              label: const Text("NextScreen"),
              onPressed: () {
                Get.to(() => const Page2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
