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
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Aplikasi pertamaku",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Row(
          children: [
            buildBlock(Colors.blue, "1"),
            buildBlock(Colors.green, "2"),
            buildBlock(Colors.yellow, "3"),
            buildBlock(Colors.green, "1"),
            buildBlock(Colors.blue, ""),
          ],
        ),
      ),
    );
  }

  Widget buildBlock(Color color, String text) {
    return Expanded(
      child: Container(
        height: double.infinity,
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
