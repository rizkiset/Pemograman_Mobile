import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller untuk GetX
class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("State Management Example")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Stateless Widget", style: TextStyle(fontWeight: FontWeight.bold)),
              StatelessExample(),
              Divider(),
              Text("Stateful Widget", style: TextStyle(fontWeight: FontWeight.bold)),
              StatefulExample(),
              Divider(),
              Text("GetX Widget", style: TextStyle(fontWeight: FontWeight.bold)),
              GetXExample(),
            ],
          ),
        ),
      ),
    );
  }
}

// Stateless Widget
class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text("Hello from Stateless Widget!"),
    );
  }
}

// Stateful Widget
class StatefulExample extends StatefulWidget {
  @override
  _StatefulExampleState createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Counter: $counter'),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text("Increment Stateful"),
        ),
      ],
    );
  }
}

// GetX Widget
class GetXExample extends StatelessWidget {
  final CounterController c = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() => Text('Counter: ${c.counter}')),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: c.increment,
          child: Text("Increment with GetX"),
        ),
      ],
    );
  }
}
