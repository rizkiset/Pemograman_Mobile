import 'package:flutter/material.dart';
import 'package:get/get.dart';

// IMPORT semua praktikum
import 'praktikum/dependency_management.dart';
import 'praktikum/route_management.dart';
import 'praktikum/route_named.dart';
import 'praktikum/bindings_builder.dart';
import 'praktikum/class_bindings.dart';
import 'praktikum/get_storage.dart';

void main() async {
  // Jika menggunakan Get Storage (praktikum terakhir)
  // uncomment baris di bawah ini:
  // await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Praktikum GetX',
      home: const MenuPraktikum(),
    );
  }
}

class MenuPraktikum extends StatelessWidget {
  const MenuPraktikum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Praktikum GetX"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("1. Dependency Management"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Get.to(() => const DependencyPage()),
          ),
          ListTile(
            title: const Text("2. Route Management"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Get.to(() => const RouteManagementPage()),
          ),
          ListTile(
            title: const Text("3. Route Named"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Get.to(() => const RouteNamedPage()),
          ),
          ListTile(
            title: const Text("4. Bindings Builder"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Get.to(() => const BindingsPage()),
          ),
          ListTile(
            title: const Text("5. Class Bindings"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Get.to(() => const ClassBindingsPage()),
          ),
          ListTile(
            title: const Text("6. Get Storage"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Get.to(() => const StoragePage()),
          ),
        ],
      ),
    );
  }
}
