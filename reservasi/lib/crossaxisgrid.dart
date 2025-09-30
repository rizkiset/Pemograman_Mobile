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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Aplikasi pertamaku",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150.0, // otomatis jumlah kolom tergantung lebar layar
          padding: EdgeInsets.all(8),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            buildBlock(Colors.blue, "1"),
            buildBlock(Colors.yellow, "2"),
            buildBlock(Colors.green, "3"),
            buildBlock(Colors.blue, "4"),
            buildBlock(Colors.yellow, "5"),
            buildBlock(Colors.green, "6"),
            buildBlock(Colors.blue, "7"),
            buildBlock(Colors.yellow, "8"),
            buildBlock(Colors.green, "9"),
          ],
        ),
      ),
    );
  }

  Widget buildBlock(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
