import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StoragePage extends StatelessWidget {
  const StoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();

    return Scaffold(
      appBar: AppBar(title: const Text("Get Storage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                box.write('name', "Rizki");
                Get.snackbar("Success", "Data disimpan");
              },
              child: const Text("Simpan Data"),
            ),
            ElevatedButton(
              onPressed: () {
                String? data = box.read('name');
                Get.snackbar("Data", "Value: $data");
              },
              child: const Text("Ambil Data"),
            ),
            ElevatedButton(
              onPressed: () {
                box.remove('name');
                Get.snackbar("Removed", "Data dihapus");
              },
              child: const Text("Hapus Data"),
            ),
          ],
        ),
      ),
    );
  }
}
