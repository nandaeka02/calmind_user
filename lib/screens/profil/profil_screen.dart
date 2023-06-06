import 'package:calmind_user/screens/registerandlogin_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  TextEditingController _namaLengkapController = TextEditingController();
  TextEditingController _jenisKelaminController = TextEditingController();
  TextEditingController _tanggalLahirController = TextEditingController();
  TextEditingController _golonganDarahController = TextEditingController();
  TextEditingController _nomorHandphoneController = TextEditingController();

  void _simpanData() {
    // Mendapatkan nilai dari TextFormField yang telah diisi
    // String namaLengkap = _namaLengkapController.text;
    // String jenisKelamin = _jenisKelaminController.text;
    // String tanggalLahir = _tanggalLahirController.text;
    // String golonganDarah = _golonganDarahController.text;
    // String nomorHandphone = _nomorHandphoneController.text;

    // Lakukan operasi penyimpanan data di sini (misalnya menyimpan ke database atau file)

    // Menampilkan snackbar sebagai konfirmasi penyimpanan data
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data berhasil disimpan')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile_image.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Nanda Coding',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Logout'),
                        content:
                            const Text('Are you sure you want to log out?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Tutup dialog
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Tambahkan logika logout di sini
                              // ...
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => const RegisterAndLoginScreen()),
                              ); // Tutup dialog
                            },
                            child: const Text('Logout'),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.red, // Mengubah warna latar belakang menjadi merah
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                color: const Color(0xFF6869ac),
                child: const Text(
                  'Data Pribadi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nama Lengkap:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        controller: _namaLengkapController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Jenis Kelamin:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        controller: _jenisKelaminController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Tanggal Lahir:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        controller: _tanggalLahirController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Golongan Darah:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        controller: _golonganDarahController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Nomor Handphone:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        controller: _nomorHandphoneController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: _simpanData,
                child: Text('Simpan Data'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6869ac),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}