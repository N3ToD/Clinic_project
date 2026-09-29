    import 'package:clinic_project/model/pegawai.dart';
import 'package:clinic_project/ui/pegawai_detail.dart';
import 'package:flutter/material.dart';

class PegawaiPage extends StatelessWidget {
  const PegawaiPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Daftar Pegawai"),),
        body: ListView(
            children: [
                GestureDetector(child: Card(child: ListTile(title: const Text("Pegawai 1"),),),
                onTap: () {
                    Pegawai absenPegawai1 = Pegawai(nomorNip: "19240974", namaPegawai: "Muhammad Naufal Rizqullah", inpPassword: "BrookFarmMilk123", noEmail: "naufalplaypark@gmail.com", noTelp: "+62 0859-6719-4310", tglLahir: "20/04/2005");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PegawaiDetail(pegawai: absenPegawai1,)));
                },
                )
            ],
        ),
    );
  }
}