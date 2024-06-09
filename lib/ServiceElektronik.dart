import 'package:flutter/material.dart';

class ServiceElektronik extends StatelessWidget {
  const ServiceElektronik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Elektronik'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/service_pipa');
          },
          child: const Text('Lanjut ke Service Pipa'),
        ),
      ),
    );
  }
}
