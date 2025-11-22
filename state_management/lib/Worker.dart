import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

// GetX Controllers
class CounterController extends GetxController {
  var counter = 0.obs;
  void increment() => counter++;
}

class ReactiveController extends GetxController {
  var name = "User".obs;
  void changeName(String newName) => name.value = newName;
}

class WorkerController extends GetxController {
  var count = 0.obs;

  @override
  void onInit() {
    ever(count, (_) => print("ever: Count changed to $count"));
    once(count, (_) => print("once: Count changed to $count"));
    interval(count, (_) => print("interval: Count changed to $count"), time: Duration(seconds: 2));
    super.onInit();
  }

  void increment() => count++;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Gabungan Semua Fitur")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle("Stateless Widget"),
                StatelessExample(),
                Divider(),
                SectionTitle("Stateful Widget"),
                StatefulExample(),
                Divider(),
                SectionTitle("GetX Widget"),
                GetXExample(),
                Divider(),
                SectionTitle("SnackBar Example"),
                SnackBarExample(),
                Divider(),
                SectionTitle("Dialog Example"),
                DialogExample(),
                Divider(),
                SectionTitle("Bottom Sheet Example"),
                BottomSheetExample(),
                Divider(),
                SectionTitle("Reactive Variable Example"),
                ReactiveExample(),
                Divider(),
                SectionTitle("Worker Example"),
                WorkerExample(),
                Divider(),
                SectionTitle("Faker + Intl Example"),
                FakerIntlExample(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget Judul Section
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16));
  }
}

// Stateless Widget
class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello from Stateless Widget!");
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
          onPressed: () => setState(() => counter++),
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

// SnackBar Widget
class SnackBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Hello from SnackBar")),
            );
          },
          child: Text("Show Normal SnackBar"),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Hello",
              "This is GetX SnackBar",
              snackPosition: SnackPosition.BOTTOM,
            );
          },
          child: Text("Show GetX SnackBar"),
        ),
      ],
    );
  }
}

// Dialog Widget
class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Hello"),
                content: Text("This is a normal dialog"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Close"),
                  ),
                ],
              ),
            );
          },
          child: Text("Show Normal Dialog"),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Hello",
              middleText: "This is a GetX dialog",
            );
          },
          child: Text("Show GetX Dialog"),
        ),
      ],
    );
  }
}

// Bottom Sheet Widget
class BottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.all(16),
                child: Text("This is a normal bottom sheet"),
              ),
            );
          },
          child: Text("Show Normal Bottom Sheet"),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                child: Text("This is a GetX bottom sheet"),
              ),
            );
          },
          child: Text("Show GetX Bottom Sheet"),
        ),
      ],
    );
  }
}

// Reactive Variable Widget
class ReactiveExample extends StatelessWidget {
  final ReactiveController rc = Get.put(ReactiveController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Text("Name: ${rc.name}")),
        TextField(
          onChanged: rc.changeName,
          decoration: InputDecoration(labelText: "Enter name"),
        ),
      ],
    );
  }
}

// Worker Widget
class WorkerExample extends StatelessWidget {
  final WorkerController wc = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Text("Count: ${wc.count}", style: TextStyle(fontSize: 24))),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: wc.increment,
          child: Text("Increment"),
        ),
      ],
    );
  }
}

// Faker + Intl Widget
class FakerIntlExample extends StatelessWidget {
  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    final String tanggal = DateFormat.yMMMMEEEEd().add_jms().format(DateTime.now());

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[300],
          backgroundImage: NetworkImage("https://picsum.photos/id/${870 + index}/200/300"),
        ),
        title: Text(faker.person.name()),
        subtitle: Text(tanggal),
      ),
    );
  }
}
