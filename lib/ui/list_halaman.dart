import 'package:clinic_project/model/pasien.dart';
import 'package:clinic_project/model/pegawai.dart';
import 'package:flutter/material.dart';
import 'pegawai_detail.dart';
import 'pasien_detail.dart';

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
              Pegawai kartuPegawai1 = Pegawai(
                nomorNip: "19240974",
                namaPegawai: "Muhammad Naufal Rizqullah",
                inpPassword: "Sebuah Rahasia",
                noEmail: "19240974@bsi.ac.id",
                noTelp: "+62 859-6719-4310",
                tglLahir: "20/04/2005",
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: kartuPegawai1),
                ),
              );
            },
          ),
          GestureDetector(
            child: Card(child: ListTile(title: const Text("Pasien"))),
            onTap: () {
              Pasien contohPasien = Pasien(
                nomorRm: "Test",
                namaPasien: "Test",
                alamatTinggal: "Test",
                noTelp: "Test",
                tglLahir: "Test",
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: contohPasien),
                ),
              );
            },
          ),
          GestureDetector(
            child: Card(child: ListTile(title: const Text("Daftar Poli"))),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
