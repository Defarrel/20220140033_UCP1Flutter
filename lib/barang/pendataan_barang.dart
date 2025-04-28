import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PendataanBarang extends StatefulWidget {
  const PendataanBarang({super.key});

  @override
  State<PendataanBarang> createState() => _PendataanBarangState();
}

class _PendataanBarangState extends State<PendataanBarang> {
  final TextEditingController tanggalController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final List<String> jenisBarang = [
    'Mouse',
    'Keyboard',
    'Headset',
    'Mousepad',
    'Lampu',
    'Speaker',
  ];
  final List<String> jenisTransaksi = [
    'Barang Masuk',
    'Barang Keluar'
  ];
  String? selectedValue;
  @override
  void initState() {
    super.initState();
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
        title: Text(
          'Pendataan Barang',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tanggal Transaksi', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              TextFormField(
                controller: tanggalController,
                decoration: InputDecoration(
                  hintText: 'Tanggal Transaksi',
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
              SizedBox(height: 30),
              DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 102, 185, 51),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  labelText: 'Jenis Transaksi',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                hint: const Text('Jenis Transaksi'),
                items:
                    jenisTransaksi
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Pilih jenis transaksi';
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 102, 185, 51),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  labelText: 'Jenis Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                hint: const Text('Jenis Barang'),
                items:
                    jenisBarang
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Pilih jenis barang';
                  }
                  return null;
                },
                onChanged: (value) {},
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
