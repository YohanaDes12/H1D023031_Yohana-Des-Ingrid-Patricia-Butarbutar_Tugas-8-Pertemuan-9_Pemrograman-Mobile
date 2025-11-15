import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("About App"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "Aplikasi ini dibuat untuk modul pembelajaran Flutter.\n"
          "Dengan tema warna hijau dan struktur kode yang lebih modern.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
