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
        body: GridView.count(
          crossAxisCount: 3, // jumlah kolom
          children: [
            buildBlock(Colors.yellow, "1"),
            buildBlock(Colors.blue, "2"),
            buildBlock(Colors.green, "3"),
            buildBlock(Colors.green, "4"),
            buildBlock(Colors.yellow, "5"),
            buildBlock(Colors.blue, "6"),
          ],
        ),
      ),
    );
  }

  Widget buildBlock(Color color, String text) {
    return Container(
      margin: EdgeInsets.all(8),
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
