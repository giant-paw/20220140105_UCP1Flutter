import 'package:flutter/material.dart';

class DetailcustPage extends StatelessWidget {
  final String namaCust;
  final String emailCust;
  final String noHPCust;
  final String alamatCust;
  final String provinsi;
  final String kodePos;

  const DetailcustPage({
    super.key,
    required this.namaCust,
    required this.emailCust,
    required this.noHPCust,
    required this.alamatCust,
    required this.provinsi,
    required this.kodePos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F4),
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

        title: Text(
          'Detail $namaCust',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
      ),
    );
  }
}
