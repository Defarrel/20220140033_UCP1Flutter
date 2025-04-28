import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pertemuan5_ucp/barang/detail_barang.dart';

class PendataanBarang extends StatefulWidget {
  const PendataanBarang({super.key});

  @override
  State<PendataanBarang> createState() => _PendataanBarangState();
}

class _PendataanBarangState extends State<PendataanBarang> {
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final List<String> jenisBarang = [
    'Mouse',
    'Keyboard',
    'Headset',
    'Mousepad',
    'Lampu',
    'Speaker',
  ];

  final Map<String, int> hargaBarang = {
    'Mouse': 150000,
    'Keyboard': 300000,
    'Headset': 250000,
    'Mousepad': 50000,
    'Lampu': 40000,
    'Speaker': 200000,
  };

  final List<String> jenisTransaksi = ['Barang Masuk', 'Barang Keluar'];
  String? selectedTransaksi;
  String? selectedBarang;

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
        child: SingleChildScrollView(
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
                  onTap: _selectDate,
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
                  onChanged: (value) {
                    setState(() {
                      selectedTransaksi = value;
                    });
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
                  onChanged: (value) {
                    setState(() {
                      selectedBarang = value;
                      hargaController.text = hargaBarang[value!]!.toString();
                    });
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jumlah Barang', style: TextStyle(fontSize: 18)),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: jumlahController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Jumlah Barang',
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
                                return 'Jumlah barang tidak boleh kosong';
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
                          Text('Harga Satuan', style: TextStyle(fontSize: 18)),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: hargaController,
                            readOnly: true,
                            decoration: InputDecoration(
                              prefixText: 'Rp. ',
                              hintText: 'Harga Satuan',
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
                                return 'Harga satuan tidak boleh kosong';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      backgroundColor: const Color.fromARGB(255, 102, 185, 51),
                      minimumSize: const Size(390, 60),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => DetailBarang(
                                      tanggal: tanggalController.text,
                                      jenisTransaksi: selectedTransaksi!,
                                      jenisBarang: selectedBarang!,
                                      jumlah: jumlahController.text,
                                      harga: hargaController.text
                                ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
