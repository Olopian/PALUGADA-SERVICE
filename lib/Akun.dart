import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/ubahData'); // Navigate to UbahData page
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Nama Pengguna'),
              subtitle: Text('Olovian'), // Ganti dengan nama pengguna yang sesuai
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('johndoe@example.com'), // Ganti dengan alamat email yang sesuai
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Alamat'),
              subtitle: Text('Jl. Contoh No. 123'), // Ganti dengan alamat yang sesuai
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomor HP'),
              subtitle: Text('081234567890'), // Ganti dengan nomor HP yang sesuai
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Navigate to login page
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
