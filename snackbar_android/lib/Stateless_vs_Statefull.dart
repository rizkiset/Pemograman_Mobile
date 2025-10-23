import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Increment Apps',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Increment Apps"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai += 1;
                      });
                      print(nilai);
                    },
                    child: const Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai -= 1;
                      });
                      print(nilai);
                    },
                    child: const Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai = 0;
                      });
                      print(nilai);
                    },
                    child: const Icon(Icons.close),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
