import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Tombol kiri: kembali ke halaman login
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),

        title: const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        // Tombol kanan: ikon notifikasi
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tidak ada notifikasi baru')),
              );
            },
          ),
        ],

        backgroundColor: Colors.cyan,
      ),

      // === ISI HALAMAN DASHBOARD ===
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            const Text(
              "Selamat Datang Anis Sufilah",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // Foto dari folder assets
            Image.asset(
              'assets/images/gambar 1.jpeg', // ganti sesuai nama file kamu
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 40),

            // Ikon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // PROFIL
                Column(
                  children: [
                    const Icon(Icons.person, size: 50, color: Color.fromARGB(255, 101, 124, 143)),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: const Text(
                        "Profil",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),

                // DATA
                Column(
                  children: [
                    const Icon(Icons.insert_chart, size: 50, color: Color.fromARGB(255, 101, 124, 143)),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Menu Data belum dibuat')),
                        );
                      },
                      child: const Text(
                        "Data",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),

                // SETTING
                Column(
                  children: [
                    const Icon(Icons.settings, size: 50, color: Color.fromARGB(255, 101, 124, 143)),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Menu Setting belum dibuat')),
                        );
                      },
                      child: const Text(
                        "Setting",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
