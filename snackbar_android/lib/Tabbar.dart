import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TabBar Layout',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tdc;

  @override
  void initState() {
    super.initState();
    tdc = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tdc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBar Layout"),
        bottom: TabBar(
          controller: tdc,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt), text: "CAMERA"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tdc,
        children: const [
          Center(child: Text("CAMERA", style: TextStyle(fontSize: 24))),
          Center(child: Text("STATUS", style: TextStyle(fontSize: 24))),
          Center(child: Text("CALLS", style: TextStyle(fontSize: 24))),
        ],
      ),
    );
  }
}
