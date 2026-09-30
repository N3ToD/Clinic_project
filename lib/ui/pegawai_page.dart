import 'package:clinic_project/model/pegawai.dart';
import 'package:flutter/material.dart';
import 'pegawai_form.dart';
import 'pegawai_item.dart';

class PegawaiPage extends StatelessWidget {
  const PegawaiPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add_box_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PegawaiForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
            pegawai: Pegawai(
              nomorNip: "aaa",
              namaPegawai: "namaPegawai",
              inpPassword: "inpPassword",
              noEmail: "noEmail",
              noTelp: "noTelp",
              tglLahir: "tglLahir",
            ),
          ),
        ],
      ),
    );
  }
}
