import 'package:flutter/material.dart';

class Servisan extends StatelessWidget {
  const Servisan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servisan'),
      ),
      body: ListView(
        children: [
          ServiceCard(
            serviceName: 'Service Motor',
            address: 'Jl. Contoh No. 1',
            issue: 'Perbaikan mesin',
            technicianChat: 'Belum ada chat',
            amount: 100000,
            technicianName: 'Budi',
          ),
          ServiceCard(
            serviceName: 'Service Mobil',
            address: 'Jl. Contoh No. 2',
            issue: 'Perbaikan rem',
            technicianChat: 'Belum ada chat',
            amount: 200000,
            technicianName: 'Anton',
          ),
          ServiceCard(
            serviceName: 'Service AC',
            address: 'Jl. Contoh No. 3',
            issue: 'AC tidak dingin',
            technicianChat: 'Belum ada chat',
            amount: 300000,
            technicianName: 'Candra',
          ),
          ServiceCard(
            serviceName: 'Service TV',
            address: 'Jl. Contoh No. 4',
            issue: 'TV mati total',
            technicianChat: 'Belum ada chat',
            amount: 400000,
            technicianName: 'Diana',
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String serviceName;
  final String address;
  final String issue;
  final String technicianChat;
  final int amount;
  final String technicianName;

  const ServiceCard({
    Key? key,
    required this.serviceName,
    required this.address,
    required this.issue,
    required this.technicianChat,
    required this.amount,
    required this.technicianName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(serviceName),
            subtitle: Text(address),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Keluhan: $issue'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Teknisi: $technicianName'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Chat Teknisi: $technicianChat'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Biaya: Rp $amount'),
                ElevatedButton(
                  onPressed: () {
                    // Fungsi untuk melakukan pembayaran
                  },
                  child: const Text('Bayar Sekarang'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
