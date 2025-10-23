import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SnackBar Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showCustomSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text(
        "Hapus produk berhasil.",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.amber,
      duration: const Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      action: SnackBarAction(
        label: "BATALKAN",
        textColor: Colors.red,
        onPressed: () {
          print("Aksi dibatalkan.");
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showCustomSnackBar(context),
          child: const Text("Tampilkan SnackBar"),
        ),
      ),
    );
  }
}
