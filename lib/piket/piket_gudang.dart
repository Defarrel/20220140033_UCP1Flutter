import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class PiketGudang extends StatefulWidget {
  final String username;
  const PiketGudang({super.key, required this.username});

  @override
  State<PiketGudang> createState() => _PiketGudangState();
}

class _PiketGudangState extends State<PiketGudang> {
  List<String> list = [];
  final TextEditingController namaController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController piketController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    namaController.text = widget.username;
  }

  void addPiket() {
    setState(() {
      list.add(piketController.text);
    });
  }

  Future<void> _selectDate() async {
    DateTime? _pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    setState(() {
      String formattedDate = DateFormat(
        'EEEE, dd MMMM yyyy',
      ).format(_pickedDate ?? DateTime.now());
      tanggalController.text = formattedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromARGB(255, 102, 185, 51),
        title: Text('Piket Gudang', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        toolbarHeight: 100,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama Anggota', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              TextFormField(
                controller: namaController,
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
              const SizedBox(height: 30),
              Text('Pilih Tanggal', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              TextFormField(
                controller: tanggalController,
                decoration: InputDecoration(
                  hintText: 'Pilih Tanggal',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 102, 185, 51),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  prefixIcon: Icon(Icons.calendar_month),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate();
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tanggal tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tugas Piket', style: TextStyle(fontSize: 18)),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: piketController,
                          decoration: InputDecoration(
                            hintText: 'Tugas Piket',
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Tugas tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              addPiket();
                              piketController.clear();
                            }
                          },
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
                            minimumSize: const Size(390, 55),
                          ),
                          child: const Text(
                            'Simpan',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  'Daftar Tugas Piket',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child:
                    list.isEmpty
                        ? Center(
                          child: Text(
                            'Belum ada Data',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        )
                        : ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 185, 51),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: ListTile(
                                title: Text(
                                  list[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                onTap: () {
                                  
                                },
                              ),
                            );
                          },
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
