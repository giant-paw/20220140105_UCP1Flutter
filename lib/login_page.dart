import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:show_hide_password/show_hide_password.dart';
import 'package:ucp1_105/home_page.dart';

class LoginPage extends StatefulWidget {
  final String? namaLengkap;
  final String? email;
  final String? nomorHP;

  const LoginPage({Key? key, this.namaLengkap, this.email, this.nomorHP})
    : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool _sembunyikanPassword = true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blur.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.4),
          padding: EdgeInsets.symmetric(horizontal: 24.0),

          child: Center(
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/coba_logo.png',
                    height: 200,
                    width: 200,
                  ),

                  SizedBox(height: 24),
                  Text(
                    'SELAMAT DATANG KEMBALI',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 24),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),

                  SizedBox(height: 24),

                  TextFormField(
                    obscureText: _sembunyikanPassword,

                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _sembunyikanPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _sembunyikanPassword = !_sembunyikanPassword;
                          });
                        },
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fillColor: Colors.white,
                    ),
                  ),

                  // ShowHidePasswordTextField(
                  //   controller: loginpasscontroller,
                  //   fontStyle: const TextStyle(fontSize: 14),
                  //   hintColor: const Color.fromARGB(255, 0, 0, 0),
                  //   visibleOffIcon: Iconsax.eye_slash,
                  //   visibleOnIcon: Iconsax.eye,

                  //   decoration: InputDecoration(
                  //     isDense: true,
                  //     hintText: 'Enter Your Password',
                  //     hintStyle: Theme.of(
                  //       context,
                  //     ).textTheme.labelMedium!.copyWith(
                  //       color: Colors.black38,
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 12,
                  //     ),
                  //     prefixIcon: Padding(
                  //       padding: EdgeInsets.only(top: 15),
                  //       child: Icon(Icons.key),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 32),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          254,
                          75,
                          159,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 24),

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
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' Silahkan Daftar Disini',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 254, 75, 159),
                              fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
