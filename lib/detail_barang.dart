import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailBarang extends StatelessWidget {

  final String tanggal;
  final String jenisTransaksi;
  final String jenisBarang;
  final int jumlahBarang;
  final int hargaSatuan;
  final int totalHarga;

  const DetailBarang({
    super.key,
    required this.tanggal,
    required this.jenisTransaksi,
    required this.jenisBarang,
    required this.jumlahBarang,
    required this.hargaSatuan,
    required this.totalHarga,
  });

  @override
  Widget build(BuildContext context) {

    final currencyFormatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp. ',
      decimalDigits: 0,
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            children: [
              const SizedBox(height: 24),

              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.withOpacity(0.1),
                ),
                padding: const EdgeInsets.all(30),
                child: const Icon(
                  Icons.check_circle,
                  size: 80,
                  color: Colors.green,
                ),
              ),

              const SizedBox(height: 16),
              const Text(
                "Data Berhasil Disimpan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              
              const SizedBox(height: 52),

              dataTampil("Tanggal", formatTanggal(tanggal)),

              Padding(padding: const EdgeInsets.only(top: 15)),

              dataTampil(
                "Jenis Transaksi",
                jenisTransaksi == "Masuk" ? "Barang Masuk" : "Barang Keluar",
              ),
              
              Padding(padding: const EdgeInsets.only(top: 15)),
              dataTampil("Jenis Barang", jenisBarang),
              
              Padding(padding: const EdgeInsets.only(top: 15)),
              dataTampil("Jumlah Barang", jumlahBarang.toString()),
              
              
              Padding(padding: const EdgeInsets.only(top: 15)),
              dataTampil(
                "Jenis Harga Satuan",
                currencyFormatter.format(hargaSatuan),
              ),
              
              Padding(padding: const EdgeInsets.only(top: 15)),
              dataTampil("Total Harga", currencyFormatter.format(totalHarga)),
              
              Padding(padding: const EdgeInsets.only(top: 55)),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 29, 179, 144),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Selesai",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget dataTampil(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  static String formatTanggal(String tanggal) {
    try {
      final date = DateFormat('dd-MM-yyyy').parse(tanggal);
      return DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(date);
    } catch (e) {
      return tanggal;
    }
  }
}