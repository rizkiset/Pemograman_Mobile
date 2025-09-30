import 'package:flutter/material.dart';

void main() {
  runApp(HaloDuniaKu());
}

class HaloDuniaKu extends StatelessWidget {
  const HaloDuniaKu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Aplikasi pertamaku"),
        ),
        body: Center(
          child: Image(
            image: AssetImage("assets/josjis.jpg"),
          ),
        ),
      ),
    );
  }
}