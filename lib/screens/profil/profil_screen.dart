import 'package:calmind_user/screens/registerandlogin_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> getApiResponse() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('api_response');
}

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);
  //const EditProfileScreen({super.key});

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  final _editFormKey = GlobalKey<FormState>();

  String namaLengkap = '';
  String jenisKelamin = '';
  String tanggalLahir = '';
  String negara = '';
  String nomorHandphone = '';

  String? apiResponse;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    String? response = await getApiResponse();
    setState(() {
      apiResponse = response;
    });
  }

  void _ProfilScreen(String? user_id) async {
    final form = _editFormKey.currentState;
    if (form!.validate()) {
      form.save();
      var url = Uri.parse(
          'http://192.168.100.42:8000/api/user/profile/updateprofile/${user_id}');
      var response = await http.post(url, body: {
        'first_name': namaLengkap,
        'gender': jenisKelamin,
        'birthdate': tanggalLahir,
        'country': negara,
        'phone_number': nomorHandphone,
      });

      if (response.statusCode == 200) {
        // Permintaan berhasil
        print(response.body);
        print(apiResponse);

        // Show SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Profil Anda sudah berhasil diubah!'),
          ),
        );
      } else {
        // Permintaan gagal
        print('Error: ${response.statusCode}');
        print(response.body);
        print(apiResponse);
      }
    }
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
              // const Text(
              //   'user760',
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
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
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (_) =>
                                      const RegisterAndLoginScreen(),
                                ),
                              );
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
                  backgroundColor: Colors.red,
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
                child: Form(
                  key: _editFormKey,
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
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Name';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            namaLengkap = value!;
                          },
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
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your gender';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            jenisKelamin = value!;
                          },
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
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your BirthDate';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            tanggalLahir = value!;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Negara:',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Country';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            negara = value!;
                          },
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
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Number';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            nomorHandphone = value!;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _ProfilScreen(apiResponse);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Profil Anda sudah berhasil diubah!'),
                    ),
                  );
                },
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
