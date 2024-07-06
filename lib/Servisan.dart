import 'package:flutter/material.dart';
import 'package:myapp/ChatTeknisi.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/Akun.dart';

class Servisan extends StatelessWidget {
  final Map<String, dynamic> serviceData;

  const Servisan({super.key, required this.serviceData});

  @override
  Widget build(BuildContext context) {
    // Extract data from argument
    final String nama = serviceData['nama'] ?? 'Tidak ada data';
    final String jenisUnit = serviceData['jenisUnit'] ?? 'Tidak ada data';
    final String jenisLayanan = serviceData['jenisLayanan'] ?? 'Tidak ada data';
    final String alamat = serviceData['alamat'] ?? 'Tidak ada data';
    final String kontak = serviceData['kontak'] ?? 'Tidak ada data';
    final String jadwal = serviceData['jadwal'] ?? 'Tidak ada data';
    final String namaTeknisi = serviceData['namaTeknisi'] ?? 'Tidak ada data';
    final int nomorAntrian = serviceData['nomorAntrian'] ?? 0; // Default nomor antrian jika tidak ada data

    // Determine icon based on jenisLayanan
    IconData iconData = Icons.format_list_numbered; // Default icon for queue number
    switch (jenisLayanan.toLowerCase()) {
      case 'perawatan rutin':
      case 'perbaikan':
      case 'pergantian suku cadang':
        iconData = Icons.motorcycle;
        break;
      case 'mobil':
        iconData = Icons.directions_car;
        break;
      case 'ac':
        iconData = Icons.ac_unit;
        break;
      case 'elektronik':
        iconData = Icons.devices;
        break;
      default:
        iconData = Icons.format_list_numbered;
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Servisan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nama: $nama', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Jenis Unit: $jenisUnit', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Jenis Layanan: $jenisLayanan', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Alamat: $alamat', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Kontak: $kontak', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Jadwal Servis: $jadwal', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Nama Teknisi: $namaTeknisi', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Nomor Antrian: $nomorAntrian', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Implement Maps navigation logic here
                    },
                    icon: const Icon(Icons.map),
                    label: const Text('Lihat di Peta'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChatTeknisi()),
                      );
                    },
                    icon: const Icon(Icons.chat),
                    label: const Text('Chat Teknisi'),
                  ),
                ),
                const SizedBox(width: 10),
                Icon(
                  iconData,
                  size: 32, // Sesuaikan ukuran ikon sesuai kebutuhan
                  color: Colors.blue, // Sesuaikan warna ikon sesuai kebutuhan
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
