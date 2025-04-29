import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:intl/date_symbol_data_local.dart';

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

      body: Padding(

        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatTanggal(piket['tanggal']),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(184, 39, 29, 109),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 29, 179, 144),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(piket['nama'],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  )),
                )
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(184, 39, 29, 109),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                piket['tugas'],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}