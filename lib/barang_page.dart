import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BarangPage extends StatefulWidget {
  const BarangPage({super.key});

  @override
  State<BarangPage> createState() => _BarangPageState();
}

class _BarangPageState extends State<BarangPage> {

  final _tanggalController = TextEditingController();
  final _jumlahController = TextEditingController();

  String? _jenisTransaksi;
  String? _jenisBarang;
  int? _hargaSatuan;

  final Map<String, int> _barangHarga = {
    'Carrier': 140000,
    'Tenda': 200000,
    'Sleeping Bag': 80000,
    'Sepatu': 120000,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/blur.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text(
          'Pendataan Barang',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Tanggal Transaksi"),
              const SizedBox(height: 8),
              TextField(
                controller: _tanggalController,
                readOnly: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_today),
                  hintText: "Tanggal Transaksi",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _tanggalController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
                    });
                  }
                },
              ),

              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _jenisTransaksi,
                items: ["Masuk", "Keluar"]
                    .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (val) => setState(() => _jenisTransaksi = val),
                decoration: InputDecoration(
                  hintText: "Jenis Transaksi",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),

              const SizedBox(height: 16),
              
              DropdownButtonFormField<String>(
                value: _jenisBarang,
                items: _barangHarga.keys
                    .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                    .toList(),
                onChanged: (val) => setState(() {
                  _jenisBarang = val;
                  _hargaSatuan = _barangHarga[val];
                }),
                decoration: InputDecoration(
                  hintText: "Jenis Barang",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}