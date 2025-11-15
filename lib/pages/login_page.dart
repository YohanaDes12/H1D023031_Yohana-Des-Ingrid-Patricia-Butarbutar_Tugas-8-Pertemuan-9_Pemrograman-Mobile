import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  Future<void> saveUser(String username) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("username", username);
  }

  void login() {
    if (userC.text == "admin" && passC.text == "admin123") {
      saveUser(userC.text);
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Login Berhasil"),
          content: const Text("Selamat datang kembali!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              child: const Text("Lanjut"),
            )
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text("Login Gagal"),
          content: Text("Username atau password salah!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          width: 330,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(blurRadius: 12, color: Colors.black12),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "NeoGreen Login",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: userC,
                decoration: const InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person, color: Colors.green),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passC,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock, color: Colors.green),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 45),
                ),
                onPressed: login,
                child: const Text("LOGIN", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
