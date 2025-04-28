import 'package:flutter/material.dart';

class InsertPelanggan extends StatefulWidget {
  const InsertPelanggan({super.key});

  @override
  State<InsertPelanggan> createState() => _InsertPelangganState();
}

class _InsertPelangganState extends State<InsertPelanggan> {
  final TextEditingController namaCustomerController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController provinsiController = TextEditingController();
  final TextEditingController kodePosController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
    void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 102, 185, 51),
        title: Text('Data Pelanggan', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 100,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Form(
        child: Padding(padding: const EdgeInsets.all(15.0), child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        )),
      ),
    );
  }
}
