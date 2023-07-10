import 'package:calmind_user/configs/mitras.dart';
import 'package:calmind_user/screens/chat/pembayaran_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

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
        nama: 'Dr. Tirta Hartomo',
        gelar: 'Psikolog',
        nomorIzin: 'No Izin : 738901',
        biaya: 'Rp 65.000',
        foto: 'assets/images/photo1.jpg'),
    MitraList(
        nama: 'Dr. Ghaida Eka Suci',
        gelar: 'Psikolog',
        nomorIzin: 'No Izin : 528902',
        biaya: 'Rp 150.000',
        foto: 'assets/images/photo2.jpg'),
    MitraList(
        nama: 'Dr. Bertha Kurniati',
        gelar: 'Psikiater',
        nomorIzin: 'No Izin : 988902',
        biaya: 'Rp 55.000',
        foto: 'assets/images/photo3.jpg'),
    MitraList(
        nama: 'Dr. Hasan Jubaidah',
        gelar: 'Psikolog',
        nomorIzin: 'No Izin : 858902',
        biaya: 'Rp 80.000',
        foto: 'assets/images/photo4.jpg'),
    MitraList(
        nama: 'Dr. Rina Sugiati',
        gelar: 'Psikiater',
        nomorIzin: 'No Izin : 758902',
        biaya: 'Rp 60.000',
        foto: 'assets/images/photo5.jpg'),
    MitraList(
        nama: 'Dr. Lisa Jesicca',
        gelar: 'Psikiater',
        nomorIzin: 'No Izin : 848902',
        biaya: 'Rp 50.000',
        foto: 'assets/images/photo6.jpg'),
    MitraList(
        nama: 'Dr. Lodric Kumawangsa',
        gelar: 'Psikolog',
        nomorIzin: 'No Izin : 938902',
        biaya: 'Rp 80.000',
        foto: 'assets/images/photo7.jpg'),
    MitraList(
        nama: 'Dr. Upin Katop',
        gelar: 'Psikolog',
        nomorIzin: 'No Izin : 868902',
        biaya: 'Rp 65.000',
        foto: 'assets/images/photo8.jpg'),
    MitraList(
        nama: 'Dr. Vrindavan Kumaladi',
        gelar: 'Psikiater',
        nomorIzin: 'No Izin : 718902',
        biaya: 'Rp 70.000',
        foto: 'assets/images/photo9.jpg'),
    MitraList(
        nama: 'Dr. Helpme UnderWater',
        gelar: 'Psikiater',
        nomorIzin: 'No Izin : 858902',
        biaya: 'Rp 75.000',
        foto: 'assets/images/photo10.jpg'),
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
