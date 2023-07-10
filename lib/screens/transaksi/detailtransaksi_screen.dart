import 'package:calmind_user/configs/colors.dart';
import 'package:calmind_user/configs/mitras.dart';
import 'package:calmind_user/configs/transaksi.dart';
import 'package:calmind_user/screens/chat/pembayaran_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class DetailTransaksiScreen extends StatefulWidget {
  // const DetailTransaksiScreen({super.key});

  final TransaksiList transaksi;

  DetailTransaksiScreen({required this.transaksi});

  @override
  State<DetailTransaksiScreen> createState() => _DetailTransaksiScreenState();
}

class _DetailTransaksiScreenState extends State<DetailTransaksiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.primaryColor,
        title: Text('Detail Transaksi'),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Konsultasi Dengan:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.transaksi.foto),
                      radius: 32,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.transaksi.nama,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.transaksi.gelar,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Detail Transaksi :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Text(
                  // '${transaksi.waktuTransaksi}',
                  '12 Mei 2023',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 0),
                Text(
                  'Biaya: Rp. ${widget.transaksi.biaya}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 15),
                Text(
                  'Detail Pembayaran :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                widget.transaksi.status == 'Lunas'
                    ? Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF12CE48),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 23,
                              ),
                              SizedBox(width: 2),
                              Text(
                                'Lunas',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFD5220E),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.error,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    'Belum Dibayar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Navigasi ke layar pembayaran
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PembayaranScreen(
                                      transaksi: MitraList(
                                          nama: widget.transaksi.nama,
                                          gelar: widget.transaksi.gelar,
                                          nomorIzin: widget.transaksi.nomorIzin,
                                          biaya: widget.transaksi.biaya,
                                          foto: widget.transaksi.foto)),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xFF6869AC), // Warna latar belakang button
                              onPrimary: Colors.white, // Warna teks pada button
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 16),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.touch_app), // Ikon "touch app"
                                SizedBox(
                                    width: 8), // Jarak antara ikon dan teks
                                Text(
                                  'Lanjut Pembayaran',
                                  style: TextStyle(fontSize: 18),
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
