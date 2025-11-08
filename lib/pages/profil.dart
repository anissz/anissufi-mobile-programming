import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Profil",
        style: TextStyle(
        fontWeight: FontWeight.bold,
  ),
),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto profil bulat
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/gambar 2.jpeg'),
            ),
            const SizedBox(height: 20),

            // Informasi pribadi
            const Text(
              "Nama: Anis Sufilah",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "NIM: 23670088",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 7),
            const Text(
              "Kelas: 5D Informatika",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 7),
            const Text(
              "Insta: @anssffh_",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 7),
            const Text(
              "Email: anissufilah@gmail.com",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Informasi tambahan dalam Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.school, size: 15, color: Colors.blueGrey),
                SizedBox(width: 5),
                Text("Prodi: Informatika", style: TextStyle(fontSize: 10)),
                SizedBox(width: 20),
                Icon(Icons.calendar_today, size: 15, color: Colors.blueGrey),
                SizedBox(width: 5),
                Text("Semester: 5", style: TextStyle(fontSize: 10)),
              ],
            ),

            const SizedBox(height: 40),

            // Tombol kembali ke dashboard
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Kembali ke Dashboard"),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
