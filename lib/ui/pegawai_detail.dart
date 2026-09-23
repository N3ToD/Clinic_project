import 'dart:ui';

import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;
  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Poli")),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama Pegawai: ${widget.pegawai.namaPegawai}",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "Nomor NIP: ${widget.pegawai.nomorNip}",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "Tanggal Lahir: ${widget.pegawai.tglLahir}",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "Email: ${widget.pegawai.noEmail}",
                  style: TextStyle(fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: _showPassword ? 0 : 6,
                      sigmaY: _showPassword ? 0 : 6,
                    ),
                    child: Text(
                      "Password: ${widget.pegawai.inpPassword}",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
