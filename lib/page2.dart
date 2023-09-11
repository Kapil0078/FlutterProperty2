import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page2"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionChip(
              label: const Text("Popup"),
              onPressed: () {
                Get.defaultDialog(
                    content: const Column(
                  children: [
                    Text("Title"),
                    Text("Subtitle"),
                    Text("content"),
                  ],
                ));
              },
            ),
            ActionChip(
              label: const Text("Snackbar"),
              onPressed: () {
                Get.snackbar(
                  "title",
                  "your message",
                );
              },
            ),
            Text(
              "${"sahil#gmail.com".isEmail}",
            ),
          ],
        ),
      ),
    );
  }
}
