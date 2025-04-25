import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 196, 225),
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat Datang'),

            ElevatedButton(
              onPressed: () {},
              child: Text('COBA KLIK'),
            ),
          ],
        ),
      ),
    );
  }
}