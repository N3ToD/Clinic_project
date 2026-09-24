import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatelessWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pasien")),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Nama Pasien: ${pasien.namaPasien}",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                "Nomor Pasien: ${pasien.nomorRm}",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                "Alamat Pasien: ${pasien.alamatTinggal}",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                "Nomor Telpon: ${pasien.noTelp}",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                "Tanggal Lahir: ${pasien.tglLahir}",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
