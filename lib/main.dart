import 'package:flutter/material.dart';
import 'package:pertemuan5_ucp/barang/pendataan_barang.dart';
import 'package:pertemuan5_ucp/home/home_page.dart';
import 'package:pertemuan5_ucp/pages/Register_page.dart';
import 'package:pertemuan5_ucp/pages/login_page.dart';
import 'package:pertemuan5_ucp/pelanggan/insert_pelanggan.dart';
import 'package:pertemuan5_ucp/piket/detail_piket.dart';
import 'package:pertemuan5_ucp/piket/piket_gudang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/home':
            (context) => HomePage(
              username: ModalRoute.of(context)!.settings.arguments as String,
            ),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/piket':
            (context) => PiketGudang(
              username: ModalRoute.of(context)!.settings.arguments as String,
            ),
        '/pelanggan': (context) => const InsertPelanggan(),
        '/barang': (context) => const PendataanBarang(),
      },
    );
  }
}
