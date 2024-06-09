import 'package:flutter/material.dart';
import 'package:myapp/Servisan.dart';
import 'package:myapp/ChatTeknisi.dart';
import 'package:myapp/Akun.dart'; // Import halaman akun

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomePage(),
    const Servisan(),
    const ChatTeknisi(),
    const Akun(), // Ubah menjadi halaman Akun
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Servisan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat Teknisi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), // Mengubah ikon ke account_circle
            label: 'Akun', // Mengubah label ke Akun
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const ServiceGrid(),
    );
  }
}

class ServiceGrid extends StatelessWidget {
  const ServiceGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: const [
          ServiceCard(
            icon: Icons.two_wheeler,
            label: 'Service Motor',
            service: 'Service Motor Yamaha',
            address: 'Jl. Merdeka No. 123, Medan, Sumatera Utara',
            issue: 'Mesin motor mogok',
            payment: 'Rp 200.000',
          ),
          ServiceCard(
            icon: Icons.directions_car,
            label: 'Service Mobil',
            service: 'Service Mobil Honda',
            address: 'Jl. Gatot Subroto No. 456, Medan, Sumatera Utara',
            issue: 'Rem mobil blong',
            payment: 'Rp 500.000',
          ),
          ServiceCard(
            icon: Icons.ac_unit,
            label: 'Service AC',
            service: 'Service AC Panasonic',
            address: 'Jl. Sudirman No. 789, Medan, Sumatera Utara',
            issue: 'AC tidak dingin',
            payment: 'Rp 300.000',
          ),
          ServiceCard(
            icon: Icons.tv,
            label: 'Service Elektronik',
            service: 'Service TV Samsung',
            address: 'Jl. MH Thamrin No. 101, Medan, Sumatera Utara',
            issue: 'TV mati total',
            payment: 'Rp 400.000',
          ),
          ServiceCard(
            icon: Icons.plumbing,
            label: 'Service Pipa',
            service: 'Service Pipa Air',
            address: 'Jl. Duren Sawit No. 567, Medan, Sumatera Utara',
            issue: 'Pipa bocor',
            payment: 'Rp 150.000',
          ),
          ServiceCard(
            icon: Icons.settings,
            label: 'Service Lainnya',
            service: 'Service Kelistrikan',
            address: 'Jl. Pangeran Antasari No. 321, Medan, Sumatera Utara',
            issue: 'Listrik rumah mati',
            payment: 'Rp 250.000',
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final IconData icon;
  final String label;
  final String service;
  final String address;
  final String issue;
  final String payment;

  const ServiceCard({
    required this.icon,
    required this.label,
    required this.service,
    required this.address,
    required this.issue,
    required this.payment,
    Key? key,
  }) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: _isSelected ? 4 : 2,
      margin: const EdgeInsets.all(8.0),
      color: _isSelected ? Colors.blueAccent : null,
      child: InkWell(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.icon,
              size: 50,
              color: _isSelected ? Colors.white : Colors.green,
            ),
            const SizedBox(height: 10),
            Text(
              widget.label,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              widget.service,
              textAlign: TextAlign.center,
            ),
            Text(
              widget.address,
              textAlign: TextAlign.center,
            ),
            Text(
              widget.issue,
              textAlign: TextAlign.center,
            ),
            Text(
              'Biaya: ${widget.payment}',
              textAlign: TextAlign.center,
            ),
            if (_isSelected) ...[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Pelanggan',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Alamat Pelanggan',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nomor Telepon Pelanggan',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatTeknisi(),
                    ),
                  );
                },
                child: const Text('Chat Teknisi'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implementasi logika pembayaran
                },
                child: const Text('Bayar Sekarang'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
