import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  final _formKey = GlobalKey<FormState>();

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
              image: AssetImage('assets/images/blur.jpg'),
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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),

                const Text(
                  'Nama Customer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Cust Tidak boleh kosong';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Nama Customer',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
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
                          const Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(height: 10),

                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email Tidak boleh kosong';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'No Hp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'NO HP Tidak boleh kosong';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'No Hp',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              const SizedBox(height: 20),

              const Text(
                'Alamat',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),
              
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Alamat Tidak boleh kosong';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Alamat',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
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
                        const Text(
                          'Provinsi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Provinsi Tidak boleh kosong';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Provinsi',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kode Pos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Kode Pos tidak boleh kosong';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Kode Pos',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 20,
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
      ),
    );
  }
}
