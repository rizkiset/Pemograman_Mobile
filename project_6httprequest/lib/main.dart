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
  late String name;
  late String lastName;
  late String email;

  @override
  void initState() {
    super.initState();
    name = '';
    lastName = '';
    email = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GET DATA',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              child: ElevatedButton(
                onPressed: () async {
                  var response = await myHttp.get(Uri.parse("https://reqres.in/api/users/2"));
                  if (response.statusCode == 200) {
                    var myresponse = json.decode(response.body) as Map<String, dynamic>;
                    setState(() {
                      name = myresponse["data"]["first_name"];
                      lastName = myresponse["data"]["last_name"];
                    });
                    print("name is: ${myresponse["data"]["first_name"]}");
                    print("lastName is: ${myresponse["data"]["last_name"]}");
                  } else {
                    print("Error: ${response.statusCode}");
                  }
                },
                child: const Text("GET DATA"),
              ),
            ),
            Text("Nama: $name $lastName"),
          ],
        ),
      ),
    );
  }
}
