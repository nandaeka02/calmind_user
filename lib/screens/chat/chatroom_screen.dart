import 'dart:async';

import 'package:calmind_user/configs/mitras.dart';
import 'package:calmind_user/screens/bottombar.dart';
//import 'package:calmind_user/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class ChatRoomScreen extends StatefulWidget {
  final MitraList transaksi;

  //const ChatRoomScreen({super.key});

  ChatRoomScreen({required this.transaksi});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  bool _isRecording = false;
  int _timerDuration = 01 * 60; // Durasi timer dalam menit
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_timerDuration > 0) {
          _timerDuration--;
        } else {
          _timer.cancel();
          // Kembali ke HomeScreen
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => BottomBar(
                     // nPass: 'nilai nPass',
                     // nEmail: 'nilai nEmail',
                    )),
            (route) => false,
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatDuration(int duration) {
    int minutes = duration ~/ 60;
    int seconds = duration % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6869AC),
        toolbarHeight: 80.0,
        titleSpacing: 0.0,
        title: Row(
          children: [
            // CircleAvatar(
            //   backgroundImage: AssetImage('assets/images/photo1.jpg'),
            //   radius: 24.0,
            // ),
            CircleAvatar(
              backgroundImage: AssetImage(widget.transaksi.foto),
              radius: 28,
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.transaksi.nama,
                  // 'Nama',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Logic for phone icon button
            },
            icon: Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {
              // Logic for video call icon button
            },
            icon: Icon(Icons.videocam),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                // Chat messages can be added here
                ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isRecording = !_isRecording;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _isRecording ? Colors.red : Colors.grey[200],
                        ),
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          _isRecording ? Icons.stop : Icons.mic,
                          color: _isRecording ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    IconButton(
                      onPressed: () {
                        // Logic for attachment icon button
                      },
                      icon: Icon(Icons.attach_file),
                    ),
                    SizedBox(width: 8.0),
                    IconButton(
                      onPressed: () {
                        // Logic for send icon button
                      },
                      icon: Icon(Icons.send),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            '${_formatDuration(_timerDuration)} minutes left',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}