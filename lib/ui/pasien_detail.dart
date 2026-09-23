import 'package:flutter/material.dart';

import '../model/pasien.dart';

class PasienDetail extends StatelessWidget {
  final Pasien pasien;
  const PasienDetail({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Card());
  }
}
