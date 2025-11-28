import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteManagementPage extends StatelessWidget {
  const RouteManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Route Management")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(() => const SecondPage()),
          child: const Text("Go to Second Page"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}
