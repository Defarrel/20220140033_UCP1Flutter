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
        title: Text(
          'Detail $namaCust',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/icon.jpeg'),
                radius: 50,
              ),
              SizedBox(height: 40),
              Text(
                '$namaCust',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '$email',
                style: TextStyle(fontFamily: 'poppins', fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                '$noHp',
                style: TextStyle(fontFamily: 'poppins', fontSize: 15),
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama Anggota', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  TextFormField(
                    readOnly: true,
                    controller: TextEditingController(text: namaCust),
                    decoration: InputDecoration(
                      hintText: 'Nama Anggota',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 102, 185, 51),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Provinsi', style: TextStyle(fontSize: 18)),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: TextEditingController(text: provinsi),
                              readOnly: true,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 102, 185, 51),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kode Pos', style: TextStyle(fontSize: 18)),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: TextEditingController(text: kodePos),
                              readOnly: true,
                              decoration: InputDecoration(
                                hintText: 'No HP',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 102, 185, 51),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        backgroundColor: const Color.fromARGB(
                          255,
                          102,
                          185,
                          51,
                        ),
                        minimumSize: const Size(390, 60),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Selesai',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
