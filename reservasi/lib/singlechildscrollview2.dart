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
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildBlock(Colors.green, "2"),
              buildBlock(Colors.blue, "2"),
              buildBlock(Colors.yellow, "3"),
              buildBlock(Colors.blue, "1"),
              buildBlock(Colors.green, "2"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBlock(Color color, String text) {
    return Container(
      width: 100,
      height: 150,
      color: color,
      margin: EdgeInsets.all(8),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
