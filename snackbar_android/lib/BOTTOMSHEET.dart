import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bottom Sheet Demo',
      home: HomePage(),
    );
  }
}

// Halaman utama dengan tombol untuk menampilkan bottom sheet
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (context) {
        return Container(
          height: 300,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text("PICK PHOTO"),
                onTap: () {
                  print("PICK PHOTO");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.music_note_rounded),
                title: const Text("PICK MUSIC"),
                onTap: () {
                  print("PICK MUSIC");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_collection),
                title: const Text("PICK VIDEO"),
                onTap: () {
                  print("PICK VIDEO");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_call),
                title: const Text("RECORD VIDEO"),
                onTap: () {
                  print("RECORD VIDEO");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showCustomBottomSheet(context),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            "SHOW BOTTOM SHEET",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
