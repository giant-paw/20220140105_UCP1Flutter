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
          color: Colors.white.withOpacity(0.8),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
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

                const SizedBox(height: 5),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Nama Lengkap",
                    fillColor: const Color.fromARGB(134, 255, 255, 255),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),

                Text('Email'),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Email",
                    fillColor: const Color.fromARGB(134, 255, 255, 255),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),

                Text('No HP'),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "No HP",
                    fillColor: const Color.fromARGB(134, 255, 255, 255),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.phone),
                    ),
                  ),
                ),

                Text(''),

                ShowHidePasswordTextField(
                  controller: regisPassController,
                  fontStyle: const TextStyle(fontSize: 14),
                  hintColor: const Color.fromARGB(255, 16, 16, 16),
                  visibleOffIcon: Iconsax.eye_slash,
                  visibleOnIcon: Iconsax.eye,

                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Password',
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(
                      color: const Color.fromARGB(96, 255, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.key),
                    ),
                  ),
                ),

                Text(''),

                ShowHidePasswordTextField(
                  controller: regisPassController,
                  fontStyle: const TextStyle(fontSize: 14),
                  hintColor: const Color.fromARGB(255, 16, 16, 16),
                  visibleOffIcon: Iconsax.eye_slash,
                  visibleOnIcon: Iconsax.eye,

                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Password',
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.labelMedium!.copyWith(
                      color: const Color.fromARGB(96, 255, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.key),
                    ),
                  ),
                ),

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
