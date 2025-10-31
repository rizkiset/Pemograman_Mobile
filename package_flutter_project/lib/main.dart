import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'pages/home.dart';
import 'pages/intro.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final pages = [HomePage(), IntroPage(), LoginPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Package Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Package Flutter'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: pages[currentIndex],
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.slideshow, title: 'Intro'),
            TabItem(icon: Icons.login, title: 'Login'),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
