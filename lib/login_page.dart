import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Selamat Datang Kembali'),

            Text('Email'),
            
            Row(
              children: [
                Icon(Icons.local_drink, size: 40, color: Colors.blue),
                    SizedBox(width: 15),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Jumlah gelas hari ini'),
                      ),
                    ),
              ],
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Lihat Data & Rata-rata'),
            )


          ],
        ),
      ),
    );
  }
}