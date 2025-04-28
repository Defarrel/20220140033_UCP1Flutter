import 'package:flutter/material.dart';

class DetailPelanggan extends StatelessWidget {
  final String namaCust, alamat, noHp, email, provinsi, kodePos;
  const DetailPelanggan({
    super.key,
    required this.namaCust,
    required this.alamat,
    required this.noHp,
    required this.email,
    required this.provinsi,
    required this.kodePos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 102, 185, 51),
        title: Text('Detail $namaCust', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
