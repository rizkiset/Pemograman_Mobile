import 'package:flutter/material.dart';
import 'package:get/get.dart';

// --- BAGIAN 1: CONTROLLER (LOGIKA BISNIS & STATE) ---

// 1. Buat Controller yang extend GetxController
class CounterController extends GetxController {
  // Deklarasi variabel reaktif (Reactive Variable)
  // .obs membuat variabel ini dapat memonitor perubahan dan mengupdate UI secara otomatis [cite: 212, 213, 279]
  var count = 0.obs;

  // Fungsi untuk menambah nilai count
  void increment() {
    count++;
  }

  // Fungsi untuk mengurangi nilai count
  void decrement() {
    count--;
  }
}

// --- BAGIAN 2: UI (VIEW) ---

// Widget ini bisa berupa StatelessWidget karena state dikelola oleh GetX [cite: 277]
class CounterPage extends StatelessWidget {
  // Menyuntikkan (inject) CounterController ke dalam aplikasi [cite: 208, 280]
  // Controller dapat diakses dan digunakan di seluruh scope aplikasi
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX State Management Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Count:",
              style: TextStyle(fontSize: 18),
            ),
            // Widget Obx otomatis memperbarui UI saat variabel reaktif berubah [cite: 209, 280]
            Obx(() => Text(
              "Count: ${controller.count}", // Akses variabel reaktif
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Decrement
                FloatingActionButton(
                  // HeroTag unik adalah solusi untuk dua FAB dalam satu Scaffold
                  heroTag: "decrementButton",
                  onPressed: controller.decrement, // Memanggil fungsi dari controller
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                // Tombol Increment
                FloatingActionButton(
                  // HeroTag unik kedua
                  heroTag: "incrementButton",
                  onPressed: controller.increment, // Memanggil fungsi dari controller
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// --- BAGIAN 3: TITIK MASUK APLIKASI ---

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gunakan GetMaterialApp untuk mengaktifkan fitur GetX (termasuk routing/state management)
    return GetMaterialApp(
      title: 'GetX State Manager Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterPage(),
    );
  }
}