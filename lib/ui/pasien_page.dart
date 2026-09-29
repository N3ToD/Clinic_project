import 'package:clinic_project/model/pasien.dart';
import 'pasien_detail.dart';
// import '../model/pasien.dart';
import 'package:flutter/material.dart';

class PasienPage extends StatelessWidget {
  const PasienPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Pasien"),),
      body: ListView(
        children: [
          
          GestureDetector(child: Card(child: ListTile(title: const Text("Pasien 1"),),),
          onTap: () {
            Pasien absenPasien1 = Pasien(nomorRm: "201", namaPasien: "Muhammad Emir Rivaldy", alamatTinggal: "Jl. Manggis 1", noTelp: "+62 0859-6719-4310", tglLahir: "20/04/2005");
            Navigator.push(context, MaterialPageRoute(builder: (context) => PasienDetail(pasien: absenPasien1,)));
          },)
        ],
      ),
    );
  }
}