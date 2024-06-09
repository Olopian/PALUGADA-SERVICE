import 'package:flutter/material.dart';

class ServiceMobil extends StatelessWidget {
  const ServiceMobil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Mobil'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/service_ac');
          },
          child: const Text('Lanjut ke Service AC'),
        ),
      ),
    );
  }
}
