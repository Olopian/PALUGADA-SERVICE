import 'package:flutter/material.dart';

class ServiceAC extends StatelessWidget {
  const ServiceAC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service AC'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/service_elektronik');
          },
          child: const Text('Lanjut ke Service Elektronik'),
        ),
      ),
    );
  }
}
