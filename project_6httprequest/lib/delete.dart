import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myHttp;

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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP DELETE"),
        actions: [
          IconButton(
            onPressed: () async {
              var response = await myHttp.get(Uri.parse("https://reqres.in/api/users/2"));
              Map<String, dynamic> result = json.decode(response.body);
              print("ID : ${result['data']['id']}");
              print("Nama : ${result['data']['first_name']} ${result['data']['last_name']}");
            },
            icon: const Icon(Icons.download),
          ),
          IconButton(
            onPressed: () async {
              var response = await myHttp.delete(Uri.parse("https://reqres.in/api/users/2"));
              if (response.statusCode == 204) {
                setState(() {
                  data = "Berhasil menghapus data";
                });
              }
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 35),
          Center(
            child: Text(data),
          ),
        ],
      ),
    );
  }
}
