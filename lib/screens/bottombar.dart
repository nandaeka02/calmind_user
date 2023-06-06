import 'package:calmind_user/configs/colors.dart';
import 'package:calmind_user/screens/beranda/beranda_screen.dart';
import 'package:calmind_user/screens/chat/chat_screen.dart';
import 'package:calmind_user/screens/profil/profil_screen.dart';
import 'package:calmind_user/screens/transaksi/transaksi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomBar extends StatefulWidget {
  final String nPass;
  final String nEmail;

  const BottomBar({
    Key? key,
    required this.nPass,
    required this.nEmail,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.tertiaryColor20,
      appBar: _selectedIndex != 0
          ? AppBar(
              backgroundColor: ConstantColors.primaryColor,
              elevation: 0,
              titleSpacing: 0,
              toolbarHeight: 70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(0),
                ),
              ),
              title: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30), // Menggeser ke kanan
                  child: Text(
                    _selectedIndex == 1
                        ? 'Konsultasi'
                        : _selectedIndex == 2
                            ? 'Transaksi'
                            : 'Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          : null,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          BerandaScreen(),
          ChatScreen(),
          TransaksiScreen(),
          ProfilScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: ConstantColors.primaryColor,
        unselectedItemColor: ConstantColors.tertiaryColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_rounded),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}