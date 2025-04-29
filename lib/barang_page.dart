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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
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
                      _tanggalController.text = DateFormat(
                        'dd-MM-yyyy',
                      ).format(pickedDate);
                    });
                  }
                },
              ),

              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _jenisTransaksi,
                items:
                    ["Masuk", "Keluar"]
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
                onChanged: (val) => setState(() => _jenisTransaksi = val),
                decoration: InputDecoration(
                  hintText: "Jenis Transaksi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              DropdownButtonFormField<String>(
                value: _jenisBarang,
                items:
                    _barangHarga.keys
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
                onChanged:
                    (val) => setState(() {
                      _jenisBarang = val;
                      _hargaSatuan = _barangHarga[val];
                    }),
                decoration: InputDecoration(
                  hintText: "Jenis Barang",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Jumlah Barang"),
                        const SizedBox(height: 8),
                        TextField(
                          controller: _jumlahController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Jumlah Barang",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Harga Satuan"),
                        const SizedBox(height: 8),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          constraints: const BoxConstraints(
                            minHeight:
                                58, 
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            _hargaSatuan != null
                                ? "Rp. $_hargaSatuan"
                                : "Rp. ",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
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
