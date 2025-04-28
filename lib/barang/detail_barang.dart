import 'package:flutter/material.dart';

class DetailBarang extends StatelessWidget {
  final String tanggal, jumlah, jenisBarang, jenisTransaksi, harga;
  const DetailBarang({
    super.key,
    required this.tanggal,
    required this.jumlah,
    required this.jenisBarang,
    required this.jenisTransaksi,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$harga'),
              Text('$jenisBarang'),
              Text('$jumlah'),
              Text('$jenisTransaksi'),
              Text('$tanggal'),
            ],
          ),
        ),
      ),
    );
  }
}
