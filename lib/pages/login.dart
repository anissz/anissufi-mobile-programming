import 'package:flutter/material.dart';
import 'dashboard.dart'; // untuk navigasi ke halaman dashboard

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk input username & password
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Fungsi login sederhana
  void login() {
    final username = usernameController.text;
    final password = passwordController.text;

    if (username == "anis" && password == "1111") {
      // Pindah ke dashboard
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardPage()),
      );
    } else {
      // Munculkan notifikasi error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Masukkan username dan password dengan benar!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Selamat Datang",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/gambar 3.jpg',
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 8),
              const Text(
                "Selamat datang... Ini adalah aplikasi profil pribadi saya.\nSilakan login terlebih dahulu (username : anis, password : 1111)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 40),


              // TextField Username dengan ikon
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 79, 95, 97)),
                ),
              ),
              const SizedBox(height: 20),

              // TextField Password dengan ikon
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 79, 95, 97)),
                ),
              ),
              const SizedBox(height: 30),

              // Tombol Login
              ElevatedButton(
                onPressed: login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 22, 167, 234),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
