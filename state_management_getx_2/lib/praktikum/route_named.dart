import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteNamedPage extends StatelessWidget {
  const RouteNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const FirstNamedPage()),
        GetPage(name: '/second', page: () => const SecondNamedPage()),
      ],
    );
  }
}

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Named Route - Page 1")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/second'),
          child: const Text("Next Page"),
        ),
      ),
    );
  }
}

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Named Route - Page 2")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text("Back"),
        ),
      ),
    );
  }
}
