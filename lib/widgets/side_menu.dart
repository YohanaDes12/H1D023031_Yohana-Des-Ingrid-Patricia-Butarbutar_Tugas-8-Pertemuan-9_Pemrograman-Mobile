import 'package:flutter/material.dart';
import '../pages/home_page.dart';
// changed: sesuaikan dengan nama file sebenarnya
import '../pages/abour_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green.shade50,
        child: ListView(
          padding: const EdgeInsets.only(top: 40),
          children: [
            const Icon(Icons.account_circle, size: 90, color: Colors.green),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "NeoGreen Menu",
                style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.green),
              title: const Text("Home"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.green),
              title: const Text("About"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
