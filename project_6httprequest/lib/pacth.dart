import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP PATCH"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameC,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Name",
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: jobC,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Job",
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async {
                var response = await http.patch(
                  Uri.parse("https://reqres.in/api/users"),
                  body: {
                    "name": nameC.text,
                    "job": jobC.text,
                  },
                );

                var data = json.decode(response.body) as Map<String, dynamic>;

                setState(() {
                  hasilResponse =
                  "Data name : ${data['name']} \nData job : ${data['job']}";
                });
              },
              child: Text("SUBMIT"),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 150,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Text(
                  hasilResponse,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
