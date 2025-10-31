import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List index = [];

  Future<void> getData() async {
    try {
      var url = Uri.parse("https://reqres.in/api/users?page=2");
      var response = await http.get(url);
      var decode = jsonDecode(response.body) as Map<String, dynamic>;
      setState(() {
        index = decode['data'];
      });
      print(index);
    } catch (e) {
      print("Terjadi kesalahan saat mengambil data:");
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOADING ..."),
      ),
      body: index.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: index.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(index[i]['avatar']),
            ),
            title: Text("${index[i]['first_name']} ${index[i]['last_name']}"),
            subtitle: Text("${index[i]['email']}"),
          );
        },
      ),
    );
  }
}
