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
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("menjalankan sebuah fungsi");
              print("klik");
            },
            child: Text("klik gw !"),
          ),
        ),
      ),
    );
  }
}
