import 'package:flutter/material.dart';

class UbahData extends StatelessWidget {
  const UbahData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubah Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add your form fields here to update the user data
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nama Pengguna',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Alamat',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nomor HP',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the changes
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
