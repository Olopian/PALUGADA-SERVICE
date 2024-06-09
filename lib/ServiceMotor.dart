import 'package:flutter/material.dart';

class ServiceMotor extends StatelessWidget {
  const ServiceMotor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Motor'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/service_mobil');
          },
          child: const Text('Lanjut ke Service Mobil'),
        ),
      ),
    );
  }
}