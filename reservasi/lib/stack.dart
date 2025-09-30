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
        body: Stack(
          children: [
            Container(
              width: 125,
              height: 125,
              color: Colors.blue,
              child: Text(":)"),
            ), // Container
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Text(":("),
            ), // Container
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: Text(":*"),
            ), // Container
          ],
        ), // Stack
      ), // Scaffold
    ); // MaterialApp
  } // build
} // HaloDuniaku
