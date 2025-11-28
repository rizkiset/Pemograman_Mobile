import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerA extends GetxController {
  var messageA = "Hello from A".obs;
}

class ControllerB extends GetxController {
  var messageB = "Hello from B".obs;
}

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerA());
    Get.put(ControllerB());
  }
}

class ClassBindingsPage extends StatelessWidget {
  const ClassBindingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final a = Get.find<ControllerA>();
    final b = Get.find<ControllerB>();

    return Scaffold(
      appBar: AppBar(title: const Text("Class Bindings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(a.messageA.value)),
            Obx(() => Text(b.messageB.value)),
          ],
        ),
      ),
    );
  }
}
