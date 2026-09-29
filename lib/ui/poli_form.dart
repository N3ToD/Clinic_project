import 'package:flutter/material.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({super.key});

  @override
  State<PoliForm> createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ListTile(title: const Text("Tambah Poli"),),),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Nama Poli"),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan")),
              
            ],
          ),
        ),
      ),
    );
  }
}