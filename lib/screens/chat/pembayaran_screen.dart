import 'package:calmind_user/configs/mitras.dart';
import 'package:calmind_user/screens/chat/chat_screen.dart';
import 'package:calmind_user/screens/chat/invoice_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PembayaranScreen extends StatefulWidget {
  final MitraList transaksi;

  PembayaranScreen({required this.transaksi});
  // const PembayaranScreen({super.key});

  @override
  State<PembayaranScreen> createState() => _PembayaranScreenState();
}

class _PembayaranScreenState extends State<PembayaranScreen> {
  int selectedPaymentIndex = 0;

  List<Map<String, dynamic>> metodePembayaran = [
    {
      'image': AssetImage('assets/images/dana.png'),
      'nama': 'Dana',
    },
    {
      'image': AssetImage('assets/images/gopay.png'),
      'nama': 'GoPay',
    },
    {
      'image': AssetImage('assets/images/spay.png'),
      'nama': 'ShopeePay',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6869AC),
        title: Text('Pembayaran Konsultasi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Konsultasi Dengan:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      // AssetImage('assets/images/photo1.jpg'),
                      AssetImage(widget.transaksi.foto),
                  radius: 28,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.transaksi.nama,
                      // 'Nama',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.transaksi.gelar,
                      // 'Psikolog',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Detail Pembayaran:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Biaya Sesi 60 Menit',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Total Pembayaran: Rp. ${widget.transaksi.biaya}',
              // 'Total : Rp 10.000',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            Text(
              'Pilih metode pembayaran:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  metodePembayaran.length,
                  (index) => _buildMetodePembayaran(
                    index: index,
                    image: metodePembayaran[index]['image'],
                    nama: metodePembayaran[index]['nama'],
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Perform payment completion logic
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          InvoiceScreen(
                            transaksi: widget.transaksi
                            ),
                    ),
                  ); // Replace with false if payment is unsuccessful
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Color(0xFF6869AC), // Replace with desired color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: Text(
                  'Bayar & Konfirmasi',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetodePembayaran(
      {required int index, required AssetImage image, required String nama}) {
    return Row(
      children: [
        Checkbox(
          value: selectedPaymentIndex == index,
          onChanged: (value) {
            setState(() {
              selectedPaymentIndex = index;
            });
          },
        ),
        Image(image: image, width: 40, height: 40),
        SizedBox(width: 16),
        Text(
          nama,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}