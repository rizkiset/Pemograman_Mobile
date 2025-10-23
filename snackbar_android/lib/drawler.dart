import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 100,
            color: Colors.blue, // Tambahkan background agar teks putih terlihat
            child: const Text(
              "DASHBOARD MENU",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),

          // List menu scrollable
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE HOME");
                  },
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                ),
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE PRODUCT");
                  },
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text("Product"),
                ),
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE HOME");
                  },
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                ),
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE PRODUCT");
                  },
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text("Product"),
                ),
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE HOME");
                  },
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                ),
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE PRODUCT");
                  },
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text("Product"),
                ),
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE HOME");
                  },
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                ),
                ListTile(
                  onTap: () {
                    print("PINDAH KE PAGE PRODUCT");
                  },
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text("Product"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
