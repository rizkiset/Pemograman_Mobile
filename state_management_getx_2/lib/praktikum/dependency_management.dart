import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var counter = 0.obs;
  void increment() => counter++;
}

class DependencyPage extends StatelessWidget {
  const DependencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyController());

    return Scaffold(
      appBar: AppBar(title: const Text("Dependency Management")),
      body: Center(
        child: Obx(() => Text(
          "Counter: ${controller.counter}",
          style: const TextStyle(fontSize: 30),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
