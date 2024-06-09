import 'package:flutter/material.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/ServiceMotor.dart';
import 'package:myapp/ServiceMobil.dart';
import 'package:myapp/ServiceAC.dart';
import 'package:myapp/ServiceElektronik.dart';
import 'package:myapp/ServicePipa.dart';
import 'package:myapp/ServiceLainnya.dart';
import 'package:myapp/ChatTeknisi.dart';
import 'package:myapp/Akun.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Halaman awal
      routes: {
        '/': (context) => const Home(),
        '/service_motor': (context) => const ServiceMotor(),
        '/service_mobil': (context) => const ServiceMobil(),
        '/service_ac': (context) => const ServiceAC(),
        '/service_elektronik': (context) => const ServiceElektronik(),
        '/service_pipa': (context) => const ServicePipa(),
        '/service_lainnya': (context) => const ServiceLainnya(),
        '/chat_teknisi': (context) => const ChatTeknisi(),
        '/akun': (context) => const Akun(),
      },
    );
  }
}
