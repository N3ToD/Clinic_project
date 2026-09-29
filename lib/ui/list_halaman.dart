import 'package:clinic_project/ui/pasien_page.dart';
import 'package:clinic_project/ui/pegawai_page.dart';
import 'package:clinic_project/ui/poli_page.dart';
import 'package:flutter/material.dart';



class ListHalaman extends StatefulWidget {
  const ListHalaman({super.key});

  @override
  State<ListHalaman> createState() => _ListHalamanState();
}

class _ListHalamanState extends State<ListHalaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Clinic")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(child: ListTile(title: const Text("Pegawai"))),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PegawaiPage(),
                ),
              );
            },
          ),
          GestureDetector(
            child: Card(child: ListTile(title: const Text("Pasien"))),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasienPage(),
                ),
              );
            },
          ),
          GestureDetector(
            child: Card(child: ListTile(title: const Text("Daftar Poli"))),
            onTap: () {
              
              Navigator.push(
                context, MaterialPageRoute<void>(builder: (context) => PoliPage(),)
              );
            },
          ),
        ],
      ),
    );
  }
}
