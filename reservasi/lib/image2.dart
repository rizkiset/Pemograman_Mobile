import 'package:flutter/material.dart';

void main() {
  runApp(HaloDuniaku());
}

class HaloDuniaku extends StatelessWidget {
  const HaloDuniaku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Aplikasi pertamaku"),
        ), // AppBar
        body: Center(
          // untuk menampilkan gambar, syarat harus terkoneksi internet
          child: Image.network("https://png.pngtree.com/png-vector/20220904/ourmid/pngtree-bendera-indonesia-merah-putih-realistic-flag-free-vector-png-image_6137081.png"),
        ), // Center, Scaffold, MaterialApp
      ),
    );
  }
}
