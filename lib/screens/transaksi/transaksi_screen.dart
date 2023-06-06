import 'package:calmind_user/configs/transaksi.dart';
import 'package:calmind_user/screens/transaksi/detailtransaksi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TransaksiScreen extends StatefulWidget {
  const TransaksiScreen({super.key});

  @override
  State<TransaksiScreen> createState() => _TransaksiScreenState();
}

class _TransaksiScreenState extends State<TransaksiScreen> {

  @override
  void initState() {
    tmp = transaksiList;
    super.initState();
  }

  List<TransaksiList> transaksiList = [
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo1.jpg',
        status: 'Lunas'),
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo2.jpg',
        status: 'Lunas'),
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo3.png',
        status: 'Lunas'),
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo4.png',
        status: 'Belum Dibayar'),
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo4.png',
        status: 'Belum Dibayar'),
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo4.png',
        status: 'Belum Dibayar'),
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo4.png',
        status: 'Belum Dibayar'),
    TransaksiList(
        nama: 'Dr. Alamsyah',
        gelar: 'Psikolog',
        nomorIzin: '123456',
        biaya: '100.000',
        foto: 'assets/images/photo4.png',
        status: 'Belum Dibayar'),
  ];

  List<TransaksiList> tmp = [];

  List<TransaksiList> filterTransaksiListByStatus(String status) {
    return transaksiList
        .where((transaksi) => transaksi.status == status)
        .toList();
  }

  // FilterStatus filterStatus = FilterStatus.all;

  @override
  Widget build(BuildContext context) {
    // List<Transaksi> filteredTransaksiList = transaksiList;

    // if (filterStatus == FilterStatus.lunas) {
    //   filteredTransaksiList =
    //       transaksiList.where((transaksi) => transaksi.lunas).toList();
    // } else if (filterStatus == FilterStatus.belumDibayar) {
    //   filteredTransaksiList =
    //       transaksiList.where((transaksi) => !transaksi.lunas).toList();
    // }

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 16),
            child: ElevatedButton.icon(
              onPressed: () {
                // Munculkan pop-up filter
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Filter'),
                      content: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Rata kiri
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Filter transaksi yang sudah lunas
                              setState(() {
                                // filterStatus = FilterStatus.lunas;
                                tmp = filterTransaksiListByStatus('Lunas');
                              });
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Color(0xFF6869AC), // Gunakan warna #6869AC
                            ),
                            icon: Icon(Icons.touch_app), // Ikon ceklis
                            label: Container(
                              decoration: BoxDecoration(
                                color:
                                    Color(0xFF6869AC), // Gunakan warna #6869AC
                                borderRadius:
                                    BorderRadius.circular(20), // Bentuk elips
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              child: Text(
                                'Lunas',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Filter transaksi yang belum dibayar
                              setState(() {
                                // filterStatus = FilterStatus.lunas;
                                tmp = filterTransaksiListByStatus('Belum Dibayar');
                              });
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Color(0xFF6869AC), // Gunakan warna #6869AC
                            ),
                            icon: Icon(Icons.touch_app), // Ikon error
                            label: Container(
                              decoration: BoxDecoration(
                                color:
                                    Color(0xFF6869AC), // Gunakan warna #6869AC
                                borderRadius:
                                    BorderRadius.circular(20), // Bentuk elips
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              child: Text(
                                'Belum Dibayar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Tampilkan semua transaksi
                              setState(() {
                                tmp = transaksiList;
                              });
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Color(0xFF6869AC), // Gunakan warna #6869AC
                            ),
                            icon: Icon(Icons.touch_app), // Ikon jari telunjuk
                            label: Text('Semua'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6869AC), // Gunakan warna #6869AC
              ),
              icon: Icon(Icons.filter_list),
              label: Text('Filter'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              // itemCount: filteredTransaksiList.length,
              itemCount: tmp.length,
              itemBuilder: (BuildContext context, int index) {
                final transaksi = tmp[index];

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(transaksi.foto),
                  ),
                  title: Text(transaksi.nama),
                  subtitle: Text(transaksi.gelar),
                  trailing: transaksi.status == 'Lunas'
                      ? Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF12ce48), // Gunakan warna #6869AC
                            borderRadius:
                                BorderRadius.circular(10), // Bentuk elips
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0,
                                  ),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.green,
                                  size: 10,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Lunas',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFD5220E), // Gunakan warna #6869AC
                            borderRadius:
                                BorderRadius.circular(10), // Bentuk elips
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Belum Dibayar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                  onTap: () {
                    // Navigasi ke layar detail transaksi
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailTransaksiScreen(
                          transaksi: transaksi,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
