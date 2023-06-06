import 'package:calmind_user/configs/mitras.dart';
import 'package:calmind_user/screens/chat/pembayaran_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // Widget getPembayaranScreen(int index) {
  //   switch (index) {
  //     case 0:
  //       return Pembayaran1Screen();
  //     case 1:
  //       return Pembayaran2Screen();
  //     case 2: // Tambahkan case baru untuk index 2
  //       return Pembayaran3Screen();
  //     case 3: // Tambahkan case baru untuk index 2
  //       return Pembayaran4Screen();
  //     default:
  //       return Container();
  //   }
  // }

  final List<MitraList> daftarMitra = [
    MitraList(
      nama: 'John Doe',
      gelar: 'Sarjana',
      nomorIzin: '12345',
      biaya: 'Rp 500.000',
      foto: 'assets/images/photo2.jpg'
    ),
    MitraList(
      nama: 'Jane Smith',
      gelar: 'Magister',
      nomorIzin: '67890',
      biaya: 'Rp 750.000',
      foto: 'assets/images/photo1.jpg'
    ),
    MitraList(
      nama: 'John Doe',
      gelar: 'Sarjana',
      nomorIzin: '12345',
      biaya: 'Rp 500.000',
      foto: 'assets/images/photo2.jpg'
    ),
    MitraList(
      nama: 'Jane Smith',
      gelar: 'Magister',
      nomorIzin: '67890',
      biaya: 'Rp 750.000',
      foto: 'assets/images/photo4.png'
    ),
    MitraList(
      nama: 'Michael Johnson',
      gelar: 'Doktor',
      nomorIzin: '13579',
      biaya: 'Rp 1.000.000',
      foto: 'assets/images/photo1.jpg'
    ),
    MitraList(
      nama: 'Emily Brown',
      gelar: 'Sarjana',
      nomorIzin: '24680',
      biaya: 'Rp 550.000',
      foto: 'assets/images/photo2.jpg'
    ),
    MitraList(
      nama: 'David Wilson',
      gelar: 'Magister',
      nomorIzin: '97531',
      biaya: 'Rp 800.000',
      foto: 'assets/images/photo3.png'
    ),
    MitraList(
      nama: 'Sarah Thompson',
      gelar: 'Doktor',
      nomorIzin: '86420',
      biaya: 'Rp 1.200.000',
      foto: 'assets/images/photo1.jpg'
    ),
    MitraList(
      nama: 'Andrew Lee',
      gelar: 'Sarjana',
      nomorIzin: '56789',
      biaya: 'Rp 600.000',
      foto: 'assets/images/photo4.png'
    ),
    MitraList(
      nama: 'Olivia Davis',
      gelar: 'Magister',
      nomorIzin: '43210',
      biaya: 'Rp 850.000',
      foto: 'assets/images/photo3.png'
    ),
    MitraList(
      nama: 'Daniel Taylor',
      gelar: 'Doktor',
      nomorIzin: '24680',
      biaya: 'Rp 1.500.000',
      foto: 'assets/images/photo2.jpg'
    ),
    MitraList(
      nama: 'Sophia Johnson',
      gelar: 'Sarjana',
      nomorIzin: '13579',
      biaya: 'Rp 550.000',
      foto: 'assets/images/photo1.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              // itemCount: userList.length,
              itemCount: daftarMitra.length,
              itemBuilder: (context, index) {
                final mitra = daftarMitra[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(0),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      tileColor: Colors.black,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(mitra.foto),
                        // backgroundImage: AssetImage('assets/images/photo1.jpg'),
                        radius: 25.0,
                      ),
                      title: Text(
                        mitra.nama,
                        // "Alamsyah",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mitra.gelar,
                            // "Psikolog",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 4.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.work,
                                      color: Colors.black,
                                      size: 12.0,
                                    ),
                                    SizedBox(width: 4.0),
                                    Text(
                                      mitra.nomorIzin,
                                      // "123456890",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            // userList[index].chatPrice,
                            mitra.biaya,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff6869ac),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 5.0,
                        ),
                        child: Text(
                          'Chat',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PembayaranScreen(
                              transaksi: mitra,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


