import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F4),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        backgroundColor: Colors.transparent, 
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/blur.jpg',
              ), 
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text(
          'Data Pelanggan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }
}