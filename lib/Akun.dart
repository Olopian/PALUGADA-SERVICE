import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  const Akun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Nama Pengguna'),
              subtitle: Text('John Doe'), // Ganti dengan nama pengguna yang sesuai
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('johndoe@example.com'), // Ganti dengan alamat email yang sesuai
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Alamat'),
              subtitle: Text('Jl. Contoh No. 123'), // Ganti dengan alamat yang sesuai
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomor HP'),
              subtitle: Text('081234567890'), // Ganti dengan nomor HP yang sesuai
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Mengganti pushReplacementNamed menjadi pushNamed agar dapat kembali ke halaman login
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
