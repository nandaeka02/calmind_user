import 'dart:async';

import 'package:calmind_user/configs/mitras.dart';
import 'package:calmind_user/screens/chat/chatroom_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WaitingChatScreen extends StatefulWidget {
  final MitraList transaksi;

  WaitingChatScreen({required this.transaksi});
  // const WaitingChatScreen({super.key});

  @override
  State<WaitingChatScreen> createState() => _WaitingChatScreenState();
}

class _WaitingChatScreenState extends State<WaitingChatScreen> {
  int _countdownSeconds = 5;
  Timer? _countdownTimer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }

  void startCountdown() {
    _countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdownSeconds > 0) {
          _countdownSeconds--;
        } else {
          _countdownTimer?.cancel();
          // Navigates to chat screen
          // Replace 'ChatScreen()' with the appropriate chat screen widget
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ChatRoomScreen(
                transaksi: widget.transaksi
                ),
            ),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6869AC),
        toolbarHeight: 80.0,
        title: Text('Waiting for Chat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300], // Warna latar belakang abu-abu
              ),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 24,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Pembayaran Berhasil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6869AC),
              ),
            ),
            SizedBox(height: 16),
            // Image.asset(
            //   'assets/images/photo1.jpg', // Replace with the actual image path
            //   width: 200,
            //   height: 200,
            // ),
            CircleAvatar(
              backgroundImage: AssetImage(widget.transaksi.foto),
              radius: 28,
            ),
            SizedBox(height: 16),
            // Text(
            //   'Dr. Tirta Hartomo', // Replace with the doctor's name
            //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            // ),
            Text(
              widget.transaksi.nama,
              // 'Nama',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Text(
            //   'Psikolog', // Replace with the doctor's specialization
            //   style: TextStyle(fontSize: 14),
            // ),
            Text(
              widget.transaksi.gelar,
              // 'Jabatan',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            Text(
              'Menunggu untuk terhubung dengan dokter...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Waktu tersisa: $_countdownSeconds detik',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}