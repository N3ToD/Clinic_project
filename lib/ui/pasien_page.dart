import 'package:clinic_project/model/pasien.dart';
import 'package:clinic_project/ui/pasien_form.dart';
import 'package:clinic_project/ui/pasien_item.dart';
// import '../model/pasien.dart';
import 'package:flutter/material.dart';

class PasienPage extends StatelessWidget {
  const PasienPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add_box_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PasienForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
            pasien: Pasien(
              nomorRm: "nomorRm",
              namaPasien: "Muhammad Naufal Rizqullah",
              alamatTinggal: "alamatTinggal",
              noTelp: "noTelp",
              tglLahir: "tglLahir",
            ),
          ),
          PasienItem(
            pasien: Pasien(
              nomorRm: "nomorRm",
              namaPasien: "Muhammad Emir Rivaldy",
              alamatTinggal: "alamatTinggal",
              noTelp: "noTelp",
              tglLahir: "tglLahir",
            ),
          ),
        ],
      ),
    );
  }
}
