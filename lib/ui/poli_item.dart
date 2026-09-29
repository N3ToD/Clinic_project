import 'package:clinic_project/model/poli.dart';
import 'package:clinic_project/ui/poli_detail.dart';
import 'package:flutter/material.dart';

class PoliItem extends StatelessWidget {
  final Poli poli;
  const PoliItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          // ignore: unnecessary_string_interpolations
          title: Text("${poli.namaPoli}"),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
    );
  }
}