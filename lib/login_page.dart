import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:show_hide_password/show_hide_password.dart';
import 'package:ucp1_105/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  TextEditingController loginpasscontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 196, 225),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email'),

            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 20),
                isDense: true,
                hintText: "Email",
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Icon(Icons.email),
                ),
              ),
            ),

            Text('Password'),

            // TextFormField(
            //   decoration: InputDecoration(
            //     contentPadding: EdgeInsets.only(top: 20),
            //     isDense: true,
            //     hintText: "Password",
            //     prefixIcon: Padding(
            //       padding: EdgeInsets.only(top: 15),
            //       child: Icon(Icons.key),
            //     ),
            //   ),
            // ),
            ShowHidePasswordTextField(
              controller: loginpasscontroller,
              fontStyle: const TextStyle(fontSize: 14),
              hintColor: const Color.fromARGB(255, 0, 0, 0),
              visibleOffIcon: Iconsax.eye_slash,
              visibleOnIcon: Iconsax.eye,

              decoration: InputDecoration(
                isDense: true,
                hintText: 'Enter Your Password',
                hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Icon(Icons.key),
                ),
              ),
            ),

            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                );
            }, child: Text("Login")),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Belum Memiliki Akun?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 7, 7, 7),
                      ),
                    ),
                    TextSpan(
                      text: ' Silahkan Daftar Disini',
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
