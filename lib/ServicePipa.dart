import 'package:flutter/material.dart';

class ServicePipa extends StatelessWidget {
  const ServicePipa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Pipa'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/service_lainnya');
          },
          child: const Text('Lanjut ke Service Lainnya'),
        ),
      ),
    );
  }
}
