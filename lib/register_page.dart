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
      backgroundColor: const Color.fromARGB(255, 237, 196, 225),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Daftar Akun Baru'),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
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
                hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
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
                hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
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
    );
  }
}
