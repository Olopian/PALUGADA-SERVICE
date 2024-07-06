import 'package:flutter/material.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/ServiceMotor.dart';
import 'package:myapp/ServiceMobil.dart';
import 'ServiceAC.dart';
import 'package:myapp/ServicePipa.dart';
import 'package:myapp/ServiceKelistrikan.dart';
import 'package:myapp/ChatTeknisi.dart';
import 'package:myapp/Servisan.dart';
import 'package:myapp/Akun.dart';
import 'package:myapp/Login.dart';
import 'package:myapp/Daftar.dart'; // Import Daftar.dart
import 'ServiceElektronik.dart';
import 'UbahData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', // Set initial route to login page
      routes: {
        '/': (context) => const Home(),
        '/service_motor': (context) => const ServiceMotor(),
        '/service_mobil': (context) => const ServiceMobil(),
        '/service_ac': (context) => const ServiceAC(),
        '/service_pipa': (context) => const ServicePipa(),
        '/service_elektronik': (context) => const ServiceElektronik(),
        '/service_kelistrikan': (context) => const ServiceKelistrikan(),
        '/chat_teknisi': (context) => const ChatTeknisi(),
        '/servisan': (context) => const Servisan(serviceData: {}),
        '/akun': (context) => const Akun(),
        '/login': (context) => const Login(),
        '/daftar': (context) => const Daftar(),
        '/ubahData': (context) => const UbahData(), // Route to Daftar.dart
      },
    );
  }
}
