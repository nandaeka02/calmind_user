import 'package:calmind_user/screens/beranda/konten_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({super.key});

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 37),
            width: double.infinity,
            height: 95,
            decoration: BoxDecoration(
              color: Color(0xFFF6869ac),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  right: -35,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 250,
                      height: 75,
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 100,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: -0.8,
                          color: Color(0xfffafafa),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 108,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 363,
                      height: 40,
                      child: Text(
                        'Di Calmind',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: -3.5,
                          color: Color(0xfffafafa),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xff6869ac),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Text(
              'Konten Terbaru',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          SizedBox(height: 0),
          GestureDetector(
            onTap: () {
              // Navigasi ke layar konten terbaru
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KontenScreen(),
                ),
              );
            },
            child: Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/1konten.jpg',
                    width: 150,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Manajemen Stres',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigasi ke layar konten terbaru
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KontenScreen(),
                ),
              );
            },
            child: Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/2konten.jpg',
                    width: 150,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dukungan Sosial dan Komunitas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigasi ke layar konten terbaru
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KontenScreen(),
                ),
              );
            },
            child: Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/3kontenbg.png',
                    width: 150,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mental Health Awareness',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Tambahkan container lainnya
        ],
      ),
    );
  }
}