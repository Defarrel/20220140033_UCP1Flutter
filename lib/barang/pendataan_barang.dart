import 'package:flutter/material.dart';

class PendataanBarang extends StatefulWidget {
  const PendataanBarang({super.key});

  @override
  State<PendataanBarang> createState() => _PendataanBarangState();
}

class _PendataanBarangState extends State<PendataanBarang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 102, 185, 51),
        title: Text(
          'Pendataan Barang',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
