import 'package:flutter/material.dart';

class DetailPiket extends StatelessWidget{
  final String username, tanggal, piket;
  const DetailPiket({
    super.key,
    required this.username,
    required this.tanggal,
    required this.piket,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 102, 185, 51),
        title: Text(
          'Detail $piket',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
