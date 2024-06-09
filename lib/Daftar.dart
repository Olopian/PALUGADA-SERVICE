import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Akun Baru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email atau Telepon',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Kata Sandi',
              ),
              obscureText: true,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Konfirmasi Kata Sandi',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
