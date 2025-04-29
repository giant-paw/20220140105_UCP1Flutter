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
        child: Column(
          children: [
            SizedBox(height: 16,),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profil2.jpg'),
            ),

            SizedBox(height: 16),
            Text(namaCust, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            
            SizedBox(height: 4),
            Text(emailCust),
            
            SizedBox(height: 4),
            Text(noHPCust),
            
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
