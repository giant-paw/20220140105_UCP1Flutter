import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:show_hide_password/show_hide_password_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  TextEditingController regisPassController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blur.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Container(
          color: Colors.white.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Icon(Icons.hiking, size: 100, color: Colors.black),

                const SizedBox(height: 10),
                const Text(
                  'DAFTAR AKUN BARU',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nama Lengkap',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: "Nama Lengkap",
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.person_3),
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Email',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),

                          const SizedBox(height: 5),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Email",
                              prefixIcon: const Icon(Icons.email),
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
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'NO HP',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),

                          const SizedBox(height: 5),

                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "No HP",
                              prefixIcon: const Icon(
                                Icons.phone_android_rounded,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),

                          const SizedBox(height: 5),

                          ShowHidePasswordTextField(
                            controller: regisPassController,
                            hintText: 'Password',
                            hintColor: Colors.grey,
                            visibleOffIcon: Iconsax.eye_slash,
                            visibleOnIcon: Iconsax.eye,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              prefixIcon: Icon(Icons.key_rounded),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Konfirmasi Password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),

                          const SizedBox(height: 5),

                          ShowHidePasswordTextField(
                            controller: regisPassController,
                            hintText: 'Password',
                            hintColor: Colors.grey,
                            visibleOffIcon: Iconsax.eye_slash,
                            visibleOnIcon: Iconsax.eye,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              prefixIcon: Icon(Icons.password_outlined),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, '/login');
                  },
                  child: Text('Register'),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.pop(context, '/login');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sudah Memiliki Akun? Silahkan ',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 7, 7, 7),
                          ),
                        ),
                        TextSpan(
                          text: 'Login Disini',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 11, 11),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
