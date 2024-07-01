import 'package:flutter/material.dart';
import 'package:myapp/Servisan.dart'; // Import the Servisan file
import 'package:myapp/ChatTeknisi.dart';
import 'package:myapp/Akun.dart';

class ServiceKelistrikan extends StatefulWidget {
  const ServiceKelistrikan({super.key});

  @override
  _ServiceKelistrikanState createState() => _ServiceKelistrikanState();
}

class _ServiceKelistrikanState extends State<ServiceKelistrikan> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController jenisUnitController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController kontakController = TextEditingController();
  final TextEditingController jadwalController = TextEditingController();

  final List<String> layananOptions = [
    'Perawatan Rutin',
    'Perbaikan',
    'Pergantian Suku Cadang'
  ];
  String? selectedLayanan;

  final List<String> teknisiOptions = ['John Doe', 'Jane Smith', 'David Johnson', 'David', 'Ferdi', 'Anis', 'Budi', 'Fred', 'Qudri'];
  String? selectedTeknisi;

  bool isProcessing = false; // Menunjukkan apakah proses sedang berlangsung atau tidak
  int _currentIndex = 1; // Menyimpan indeks tab yang dipilih

  @override
  void initState() {
    super.initState();
    // Set initial value for jadwalController with current date and time
    jadwalController.text = DateTime.now().toString();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/servisan');
        break;
      case 2:
        Navigator.pushNamed(context, '/chat_teknisi');
        break;
      case 3:
        Navigator.pushNamed(context, '/akun');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Motor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: jenisUnitController,
                  decoration: const InputDecoration(
                    labelText: 'Jenis Unit',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the unit type';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Jenis Layanan',
                    border: OutlineInputBorder(),
                  ),
                  value: selectedLayanan,
                  items: layananOptions.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedLayanan = newValue!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a service type';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: alamatController,
                  decoration: const InputDecoration(
                    labelText: 'Alamat',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: kontakController,
                  decoration: const InputDecoration(
                    labelText: 'Kontak',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your contact';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: jadwalController,
                  decoration: const InputDecoration(
                    labelText: 'Jadwal Servis',
                    border: OutlineInputBorder(),
                  ),
                  readOnly: true,
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Pilih Teknisi',
                    border: OutlineInputBorder(),
                  ),
                  value: selectedTeknisi,
                  items: teknisiOptions.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedTeknisi = newValue!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a technician';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isProcessing = true; // Mengubah status menjadi proses sedang berlangsung
                        });

                        // Simulasi penundaan untuk proses
                        Future.delayed(const Duration(seconds: 2), () {
                          setState(() {
                            isProcessing = false; // Mengubah status menjadi tidak sedang berlangsung
                          });

                          // Navigasi ke halaman Servisan setelah proses selesai
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Servisan(
                                serviceData: {
                                  'nama': namaController.text,
                                  'jenisUnit': jenisUnitController.text,
                                  'jenisLayanan': selectedLayanan!,
                                  'alamat': alamatController.text,
                                  'kontak': kontakController.text,
                                  'jadwal': jadwalController.text,
                                  'namaTeknisi': selectedTeknisi!,
                                },
                              ),
                            ),
                          );
                        });
                      }
                    },
                    child: isProcessing
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('Service Sekarang'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
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
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
