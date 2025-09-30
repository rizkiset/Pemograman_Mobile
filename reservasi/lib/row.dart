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
        body: Row(
          children: [
            Container(
              width: 90,
              height: 90,
              color: Colors.blue,
              child: Text("1"),
            ), // Container
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
              child: Text("2"),
            ), // Container
            Container(
              width: 90,
              height: 90,
              color: Colors.yellow,
              child: Text("3"),
            ), // Container
          ],
        ), // column
      ), // Scaffold
    ); // MaterialApp
  } // build
} // HaloDuniaku
