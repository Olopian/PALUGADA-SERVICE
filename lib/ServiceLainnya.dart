import 'package:flutter/material.dart';

class ServiceLainnya extends StatelessWidget {
  const ServiceLainnya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Lainnya'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: const Text('Kembali ke Home'),
        ),
      ),
    );
  }
}
