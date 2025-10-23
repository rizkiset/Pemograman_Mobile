import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dropdown Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> data = [
    {"judul": "LESS COFFE", "value": 1},
    {"judul": "LESS SUGAR", "value": 2},
    {"judul": "EXTRA ICE", "value": 3},
  ];

  int dataVal = 1;

  @override
  void initState() {
    super.initState();
    dataVal = data.first['value'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownButton<int>(
          value: dataVal,
          items: data.map((item) {
            return DropdownMenuItem<int>(
              value: item['value'],
              child: Text(item['judul']),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              dataVal = value!;
            });
          },
        ),
      ),
    );
  }
}
