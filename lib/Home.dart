import 'package:flutter/material.dart';
import 'package:myapp/Servisan.dart';
import 'package:myapp/ChatTeknisi.dart';
import 'package:myapp/Akun.dart'; // Import halaman akun

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomePage(),
    const Servisan(serviceData: {}),
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
        selectedItemColor: Colors.blue, // Highlight selected item in blue
        unselectedItemColor: Colors.grey, // Unselected items in grey
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Icon Home
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build), // Icon Servisan
            label: 'Servisan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat), // Icon Chat Teknisi
            label: 'Chat Teknisi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), // Icon Akun
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
  const ServiceGrid({super.key});

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
            service: 'Service Motor Semua Unit',
            route: '/service_motor',
          ),
          ServiceCard(
            icon: Icons.directions_car,
            label: 'Service Mobil',
            service: 'Service Mobil Semua Unit',
            route: '/service_mobil',
          ),
          ServiceCard(
            icon: Icons.ac_unit,
            label: 'Service AC',
            service: 'Service AC Semua Tipe',
            route: '/service_ac',
          ),
          ServiceCard(
            icon: Icons.tv,
            label: 'Service Elektronik',
            service: 'Service Yang Berhubungan Dengan Elektronik',
            route: '/service_elektronik',
          ),
          ServiceCard(
            icon: Icons.plumbing,
            label: 'Service Pipa',
            service: 'Service Pipa Air',
            route: '/service_pipa',
          ),
          ServiceCard(
            icon: Icons.bolt,
            label: 'Service Kelistrikan',
            service: 'Service kelistrikan',
            route: '/service_kelistrikan',
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String service;
  final String route;

  const ServiceCard({
    required this.icon,
    required this.label,
    required this.service,
    required this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 30,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              service,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
