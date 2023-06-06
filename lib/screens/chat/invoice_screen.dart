import 'package:calmind_user/configs/mitras.dart';
import 'package:calmind_user/screens/chat/waitingchat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InvoiceScreen extends StatefulWidget {
  final MitraList transaksi;

  InvoiceScreen({required this.transaksi});
  // const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  String virtualAccount = '1234567890';
  double amount = 50000;
  bool tutorial1Open = false;
  bool tutorial2Open = false;
  bool tutorial3Open = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice Pembayaran'),
        backgroundColor: const Color(0xFF6869AC),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                'Jadwal Konsultasi :',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text(
                'Kamis, 12 Juni 2023',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 4),
              Text(
                '12.00 WIB',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 18),
              Text(
                'Kode Virtual Account:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                '1234567890 (BCA A.n Calmind)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 18),
              Text(
                'Jumlah yang Harus Dibayar :',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text(
                'Biaya: ${widget.transaksi.biaya}',
                // 'Biaya',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tutorial1Open = !tutorial1Open;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFfefefe),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        tutorial1Open
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Petunjuk Transfer Dana',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1e1e1e),
                          decoration: tutorial1Open
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (tutorial1Open) ...[
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFfafafa),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '1. Buka Aplikasi Dana \n2. Tap Kirim \n3. Tap Kirim ke Bank, Pilih Bank BCA \n4. Masukkan nomor Virtual Account. \n5. Masukkan nominal yang akan dikirimkan. \n6. Pilih metode bayar dengan saldo DANA. \n7. Pastikan Nama Penerima sudah sesuai. \n8. Tap BAYAR',
                  ),
                ),
              ],
              SizedBox(height: 6),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tutorial2Open = !tutorial2Open;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFfafafa),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        tutorial2Open
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Petunjuk Transfer Gopay',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1e1e1e),
                          decoration: tutorial2Open
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (tutorial2Open) ...[
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFfafafa),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '1. Buka Aplikasi Gojek \n2. Tap Gopay \n3. Tap Kirim ke Bank, Pilih Bank BCA \n4. Masukkan nomor Virtual Account. \n5. Masukkan nominal yang akan dikirimkan. \n6. Pilih metode bayar dengan saldo GOPAY. \n7. Pastikan Nama Penerima sudah sesuai. \n8. Tap BAYAR',
                  ),
                ),
              ],
              SizedBox(height: 6),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tutorial3Open = !tutorial3Open;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFfafafa),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        tutorial3Open
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Petunjuk Transfer ShopeePay',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1e1e1e),
                          decoration: tutorial3Open
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (tutorial3Open) ...[
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[200],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '1. Buka Aplikasi Shopee \n2. Tap ShopePay \n3. Tap Kirim ke Bank, Pilih Bank BCA \n4. Masukkan nomor Virtual Account. \n5. Masukkan nominal yang akan dikirimkan. \n6. Pilih metode bayar dengan saldo ShopeePay. \n7. Pastikan Nama Penerima sudah sesuai. \n8. Tap BAYAR',
                  ),
                ),
              ],
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Perform payment completion logic
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            // WaitingChat(transaksi: widget.transaksi),
                            WaitingChatScreen(
                              transaksi: widget.transaksi,
                            ),
                      ),
                    ); // Replace with false if payment is unsuccessful
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(
                        0xFF6869AC), // Set the button's background color to #6869AC
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons
                            .touch_app, // Replace the button's child with the tap gesture icon
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Konfirmasi Pembayaran',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}