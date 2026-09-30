import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({super.key});

  @override
  State<PegawaiForm> createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ListTile(title: const Text("Tambah Pegawai"))),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Nama Pegawai"),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan")),
            ],
          ),
        ),
      ),
    );
  }
}
