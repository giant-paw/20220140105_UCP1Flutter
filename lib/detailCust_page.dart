import 'package:flutter/material.dart';
import 'package:ucp1_105/home_page.dart';

class DetailcustPage extends StatelessWidget {
  final String namaCust;
  final String emailCust;
  final String noHPCust;
  final String alamatCust;
  final String provinsi;
  final String kodePos;
  final String emailLogin;

  const DetailcustPage({
    super.key,
    required this.namaCust,
    required this.emailCust,
    required this.noHPCust,
    required this.alamatCust,
    required this.provinsi,
    required this.kodePos,
    required this.emailLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
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

            Align(
              alignment: Alignment.centerLeft,
              child: Text("Alamat", style: TextStyle(fontWeight: FontWeight.bold)),
            ),

            SizedBox(height: 10,),

            TextFormField(
              initialValue: alamatCust,
              readOnly: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(20),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Provinsi", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      TextFormField(
                        initialValue: provinsi,
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kode Pos", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      TextFormField(
                        initialValue: kodePos,
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 29, 179, 144),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> HomePage(email: emailLogin)
                  ),
                );
              },
              child: Text("Selesai", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
