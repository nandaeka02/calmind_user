import 'package:calmind_user/screens/beranda/konten_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({super.key});

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 37),
            width: double.infinity,
            height: 95,
            decoration: BoxDecoration(
              color: Color(0xFFF6869ac),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  right: -35,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 250,
                      height: 75,
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 100,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: -0.8,
                          color: Color(0xfffafafa),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 108,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 363,
                      height: 40,
                      child: Text(
                        'Di Calmind',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: -3.5,
                          color: Color(0xfffafafa),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xff6869ac),
              borderRadius: BorderRadius.circular(0),
            ),
            child: Text(
              'Konten Terbaru',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KontenScreen(
                    image: 'assets/images/k1.png',
                    title: 'Manajemen Stres',
                    content:
                        'Manajemen stres adalah serangkaian tindakan atau strategi yang dilakukan untuk mengenali, mengurangi,dan mengatasi stres dalam kehidupan sehari-hari.\n\nMengelola stres secara teratur dapat membantu mencegah gangguan kesehatan mental seperti kecemasan dan depresi, serta masalah fisik seperti gangguan tidur, tekanan darah tinggi, dan masalah pencernaan.\n\nBerikut adalah tips dan strategi praktis untuk mengelola stres sehari-hari dan menjaga keseimbangan kesehatan mental\n\n#1 Prioritaskan Pola Tidur yang Baik\nTidur yang cukup dan berkualitas penting untuk mengelola stres. Usahakan untuk tidur antara 7-9 jam setiap malam. Buat rutinitas tidur yang konsisten, hindari konsumsi kafein atau makan berat sebelum tidur, dan ciptakan lingkungan tidur yang nyaman dan tenang.\n\n#2 Latihan Pernapasan Dalam\nKetika merasa stres, latihan pernapasan dalam dapat membantu menenangkan sistem saraf dan mengurangi kecemasan. Ambil napas dalam melalui hidung, tahan beberapa detik, lalu hembuskan perlahan melalui mulut. Fokus pada pernapasan yang lambat dan dalam untuk mencapai efek relaksasi.\n\n#3 Praktik Meditasi\nMeditasi adalah teknik yang efektif untuk meredakan stres dan meningkatkan kesejahteraan mental. Luangkan waktu beberapa menit setiap hari untuk duduk dengan tenang, fokus pada pernapasan atau mantras yang tenang, dan biarkan pikiran mengalir tanpa menghakiminya. Gunakan aplikasi meditasi atau panduan online untuk membantu Anda memulai.\n\n#4 Olahraga Teratur\nAktivitas fisik seperti olahraga dapat membantu mengurangi stres dan meningkatkan suasana hati. Pilih aktivitas yang Anda nikmati, seperti berjalan kaki, lari, yoga, atau bersepeda. Usahakan untuk berolahraga secara teratur, setidaknya 30 menit setiap hari atau sesuai kemampuan Anda.\n\n#5 Jaga Pola Makan Seimbang\nMakan makanan bergizi dan seimbang dapat mempengaruhi kesehatan mental. Kurangi konsumsi makanan olahan, kafein, dan gula berlebih, serta perbanyak asupan buah, sayuran, protein sehat, dan lemak sehat. Pastikan Anda terhidrasi dengan baik dengan minum air yang cukup.\n\n',
                  ),
                ),
              );
            },
            child: Container(
              height: 180,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/k1.png',
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KontenScreen(
                    image: 'assets/images/k2.png',
                    title: 'Dukungan Sosial dan Komunitas',
                    content:
                        'Dukungan sosial memainkan peran penting dalam menjaga kesehatan mental seseorang.\n \nInteraksi sosial yang positif, rasa memiliki jaringan dukungan, dan hubungan yang empatik dapat memberikan manfaat yang signifikan bagi kesejahteraan mental.\n\nBerikut adalah penjelasan tentang pentingnya dukungan sosial dan beberapa contoh komunitas online atau kelompok dukungan yang dapat membantu individu:\n\n#1 Mengurangi Rasa Kesepian\nDukungan sosial dapat mengurangi perasaan kesepian yang seringkali menjadi faktor risiko untuk masalah kesehatan mental seperti depresi dan kecemasan. Melalui komunitas atau kelompok dukungan, individu dapat merasa terhubung dengan orang lain yang mengalami pengalaman serupa dan merasa didengar dan dipahami.\n\n#2 Menyediakan Ruang Aman untuk Berbagi\nKomunitas atau kelompok dukungan dapat memberikan ruang yang aman bagi individu untuk berbagi pengalaman, perasaan, dan tantangan yang mereka hadapi dalam lingkungan yang mendukung. Ini dapat membantu mengurangi beban emosional dan memberikan perasaan pemahaman dan dukungan yang kuat.\n\n#3 Memberikan Perspektif dan Pemahaman yang Baru\nMelalui interaksi dengan anggota komunitas atau kelompok dukungan, individu dapat mendapatkan perspektif yang baru, informasi, dan wawasan tentang masalah kesehatan mental yang mereka hadapi. Hal ini dapat membantu dalam pemahaman diri, mengurangi stigma, dan memberikan harapan serta inspirasi untuk pemulihan.\n\n#4 Meningkatkan Rasa Percaya Diri dan Kemandirian\nDukungan sosial yang positif dapat meningkatkan rasa percaya diri dan memberikan dorongan motivasi bagi individu untuk mengatasi tantangan mereka. Dalam komunitas atau kelompok dukungan, individu dapat mendapatkan dorongan, umpan balik konstruktif, dan dukungan emosional yang memperkuat keyakinan diri mereka.\n\n#5 Membangun Hubungan Sosial yang Positif\nTerlibat dalam komunitas atau kelompok dukungan dapat membantu individu membangun hubungan sosial yang positif dan memperluas jaringan sosial mereka. Ini dapat mengurangi isolasi sosial, meningkatkan rasa memiliki, dan memberikan kesempatan untuk membangun persahabatan dan ikatan yang saling mendukung.\n\n',
                  ),
                ),
              );
            },
            child: Container(
              height: 180,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/k2.png',
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KontenScreen(
                    image: 'assets/images/k3.png',
                    title: 'Mental Health Awareness',
                    content:
                        'Membangun Kesadaran akan Kesehatan Mental bertujuan untuk meningkatkan pemahaman dan pengetahuan tentang kesehatan mental.\n \nIni melibatkan upaya untuk menghilangkan stigma, mengedukasi masyarakat tentang gangguan kesehatan mental, dan mempromosikan dukungan serta perawatan yang tepat\n \nDengan meningkatkan kesadaran tentang kesehatan mental, kita dapat menciptakan lingkungan yang lebih inklusif dan mendukung bagi individu yang mengalami masalah kesehatan mental.\n\n#1 Mengurangi Stigma\nMental Health Awareness membantu mengurangi stigma terkait dengan gangguan kesehatan mental. Dengan meningkatkan pemahaman dan pengetahuan tentang kesehatan mental, stigma negatif dan diskriminasi terhadap individu dengan masalah kesehatan mental dapat dikurangi.\n\n#2 Mendorong Pencarian Bantuan\nMelalui kampanye Mental Health Awareness, individu yang mengalami masalah kesehatan mental didorong untuk mencari bantuan dan perawatan yang tepat. Peningkatan kesadaran dapat membantu mereka menyadari bahwa mereka tidak sendirian dan ada sumber daya yang tersedia untuk mendukung mereka.\n\n#3 Meningkatkan Pemahaman\nPeningkatan kesadaran tentang kesehatan mental membantu masyarakat memahami gejala, penyebab, dan pengobatan gangguan kesehatan mental. Hal ini memungkinkan individu untuk mengenali tanda-tanda yang mungkin mereka atau orang terdekat mereka alami, sehingga mereka dapat mengambil langkah-langkah yang tepat untuk mendapatkan bantuan.\n\n#4 Meningkatkan Kesehatan Mental Secara Keseluruhan\nDengan meningkatkan kesadaran tentang kesehatan mental, masyarakat menjadi lebih terampil dalam mengelola stres, menjaga keseimbangan emosional, dan merawat kesehatan mental mereka secara keseluruhan. Ini dapat berdampak positif pada kualitas hidup individu dan masyarakat secara keseluruhan.\n\n#5 Menggalang Dukungan\nMental Health Awareness juga membantu menggalang dukungan dan empati dari masyarakat. Dengan meningkatkan pemahaman tentang kesehatan mental, orang-orang cenderung lebih berempati dan mendukung individu yang mengalami masalah kesehatan mental, menciptakan lingkungan yang lebih aman dan mendukung bagi mereka.\n\n',
                  ),
                ),
              );
            },
            child: Container(
              height: 180,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/k3.png',
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
