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
          title: Text(
            "Aplikasi pertamaku",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            buildBlock(Colors.red, "Merah"),
            buildBlock(Colors.green, "Hijau"),
            buildBlock(Colors.yellow, "Kuning"),
            buildBlock(Colors.blue, "Biru"),
            buildBlock(Colors.green, "Hijau"),
            buildBlock(Colors.yellow, "Kuning"),
          ],
        ),
      ),
    );
  }

  Widget buildBlock(Color color, String label) {
    return Container(
      height: 100,
      width: double.infinity,
      color: color,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
