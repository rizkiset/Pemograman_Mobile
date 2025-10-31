import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome",
          body: "Ini adalah halaman pengenalan aplikasi Flutter kamu.",
          image: Lottie.asset("assets/lottie/login.json"),
        ),
        PageViewModel(
          title: "Explore",
          body: "Temukan berbagai fitur menarik di aplikasi ini.",
          image: Lottie.asset("assets/lottie/laptop.json"),
        ),
      ],
      onDone: () {
        Navigator.of(context).pop();
      },
      done: const Text("Selesai", style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text("Lewati"),
      dotsDecorator: DotsDecorator(
        size: Size(8.0, 8.0),
        color: Colors.grey,
        activeColor: Colors.blueAccent,
      ),
    );
  }
}
