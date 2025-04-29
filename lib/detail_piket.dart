import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPiket extends StatelessWidget {
  
  final Map<String, dynamic> piket;
  const DetailPiket({super.key, required this.piket});

  String _formatTanggal(DateTime tanggal) {
    String hari = DateFormat('EEEE', 'id_ID').format(tanggal);
    String bulan = DateFormat('MMMM', 'id_ID').format(tanggal);
    return '$hari, ${tanggal.day} $bulan ${tanggal.year}';
  }

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
          'Detail Piket',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }
}