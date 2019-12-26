import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SemuaKata extends StatefulWidget {
  @override
  _SemuaKataState createState() => _SemuaKataState();
}

class _SemuaKataState extends State<SemuaKata> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarSemuaKata = new List();
//membuat array untuk data menu
  var pilihanKata = [
    {"nama": "A", "gambar": "/1abjad/1_A.gif", },
    {"nama":"Assalamualaikum", "gambar":"/3sapaan/assalamualikum.gif"},
    {"nama":"Apa", "gambar":"/5katatanya/apa.gif"},
    {"nama":"Adik", "gambar":"/6panggilankeluarga/adik.gif"},
    {"nama":"Abu-Abu", "gambar":"/10warna/abuabu.gif"},

    
    {"nama": "B", "gambar": "/1abjad/2_B.gif"},
    {"nama":"Bapak", "gambar":"/6panggilankeluarga/bapak.gif"},
    {"nama":"Bagaimana", "gambar":"/5katatanya/bagaimana.gif"},
    {"nama":"Baik", "gambar":"/9katasifat/baik.gif"},
    {"nama":"Bangun", "gambar":"/8katakerja/bangun.gif"},
    {"nama":"Besok", "gambar":"/7hari/besok.gif"},
    {"nama":"Biru", "gambar":"/10warna/biru.gif"},
    

    {"nama": "C", "gambar": "/1abjad/3_C.gif"},
    {"nama":"Coklat", "gambar":"/10warna/coklat.gif"},

    {"nama": "D", "gambar": "/1abjad/4_D.gif"},
    {"nama":"Dimana", "gambar":"/5katatanya/dimana.gif"},
    {"nama":"Depan", "gambar":"/7hari/depan.gif"},
    

    {"nama": "E", "gambar": "/1abjad/5_E.gif"},
    {"nama":"Emosi", "gambar":"/9katasifat/emosi.gif"},
    {"nama":"Emas", "gambar":"/10warna/emas.gif"},


    {"nama": "F", "gambar": "/1abjad/6_F.gif"},
    {"nama": "G", "gambar": "/1abjad/7_G.gif"},
    {"nama": "H", "gambar": "/1abjad/8_H.gif"},
    {"nama":"Halo", "gambar":"/3sapaan/halo.gif"},
    {"nama":"Hari", "gambar":"/7hari/hari.gif"},
    {"nama":"Hijau", "gambar":"/10warna/hijau.gif"},
    {"nama":"Hitam", "gambar":"/10warna/hitam.gif"},
    


    {"nama": "I", "gambar": "/1abjad/9_I.gif"},
    {"nama":"Ibu", "gambar":"/6panggilankeluarga/ibu.gif"},


    {"nama": "J", "gambar": "/1abjad/10_J.gif"},
    {"nama":"Jumat", "gambar":"/7hari/jumat.gif"},

    {"nama": "K", "gambar": "/1abjad/11_K.gif"},
    {"nama":"Kapan", "gambar":"/5katatanya/kapan.gif"},
    {"nama":"Kakak", "gambar":"/6panggilankeluarga/kakak.gif"},
    {"nama":"Kakek", "gambar":"/6panggilankeluarga/kakek.gif"},
    {"nama":"Kemarin", "gambar":"/7hari/kemarin.gif"},
    {"nama":"Kemarin", "gambar":"/7hari/kemarin.gif"},
    {"nama":"Kamis", "gambar":"/7hari/kamis.gif"},
    {"nama":"Kerja", "gambar":"/8katakerja/kerja.gif"},
    {"nama":"Kuning", "gambar":"/10warna/kuning.gif"},


    {"nama": "L", "gambar": "/1abjad/12_L.gif"},
    {"nama":"Lalu", "gambar":"/7hari/lalu.gif"},
    {"nama":"Lusa", "gambar":"/7hari/lusa.gif"},


    {"nama": "M", "gambar": "/1abjad/13_M.gif"},
    {"nama":"Maaf", "gambar":"/3sapaan/maaf.gif"},
    {"nama":"Makan", "gambar":"/8katakerja/makan.gif"},
    {"nama":"Minum", "gambar":"/8katakerja/minum.gif"},
    {"nama":"Minggu", "gambar":"/7hari/minggu.gif"},
    {"nama":"Malas", "gambar":"/9katasifat/malas.gif"},
    {"nama":"Marah", "gambar":"/9katasifat/marah.gif"},
    {"nama":"Mengapa", "gambar":"/5katatanya/mengapa.gif"},
    {"nama":"Merah", "gambar":"/10warna/merah.gif"},


    {"nama": "N", "gambar": "/1abjad/14_N.gif"},
    {"nama":"Nenek", "gambar":"/6panggilankeluarga/nenek.gif"},
    {"nama": "Nomor", "gambar": "/2nomor/Nomor.gif"},


    {"nama": "O", "gambar": "/1abjad/15_O.gif"},
    {"nama":"Oranye", "gambar":"/10warna/oranye.gif"},
    {"nama": "P", "gambar": "/1abjad/16_P.gif"},
    {"nama":"Putih", "gambar":"/10warna/putih.gif"},
    {"nama":"Perak", "gambar":"/10warna/perak.gif"},

    {"nama": "Q", "gambar": "/1abjad/17_Q.gif"},
    {"nama": "R", "gambar": "/1abjad/18_R.gif"},
    {"nama":"Rabu", "gambar":"/7hari/rabu.gif"},
    {"nama":"Rajin", "gambar":"/9katasifat/rajin.gif"},


    {"nama": "S", "gambar": "/1abjad/19_S.gif"},
    {"nama":"Sama-sama", "gambar":"/3sapaan/samasama.gif"},
    {"nama":"Siapa", "gambar":"/5katatanya/siapa.gif"},
    {"nama":"Semangat", "gambar":"/9katasifat/semangat.gif"},
    {"nama":"Sekolah", "gambar":"/8katakerja/sekolah.gif"},
    {"nama":"Senin", "gambar":"/7hari/senin.gif"},
    {"nama":"Selasa", "gambar":"/7hari/selasa.gif"},
    {"nama":"Sabtu", "gambar":"/7hari/sabtu.gif"},
    {"nama":"Sabar", "gambar":"/9katasifat/sabar.gif"},
    {"nama":"Selamat Pagi", "gambar":"/3sapaan/selamatpagi.gif"},
    {"nama":"Selamat Datang", "gambar":"/3sapaan/selamatdatang.gif"},


    {"nama": "T", "gambar": "/1abjad/20_T.gif"},
    {"nama":"Tidur", "gambar":"/8katakerja/tidur.gif"},
    {"nama":"Terimakasih", "gambar":"/3sapaan/terimakasih.gif"},


    {"nama": "U", "gambar": "/1abjad/21_U.gif"},
    {"nama":"Ungu", "gambar":"/10warna/ungu.gif"},
    {"nama": "V", "gambar": "/1abjad/22_V.gif"},
    {"nama": "W", "gambar": "/1abjad/23_W.gif"},
    {"nama":"Warna", "gambar":"/10warna/warna.gif"},

    {"nama": "X", "gambar": "/1abjad/24_X.gif"},
    {"nama": "Y", "gambar": "/1abjad/25_Y.gif"},
    {"nama": "Z", "gambar": "/1abjad/26_Z.gif"},


  //nomor
    {"nama": "1", "gambar": "/2nomor/1.gif"},
    {"nama": "2", "gambar": "/2nomor/2.gif"},
    {"nama": "3", "gambar": "/2nomor/3.gif"},
    {"nama": "4", "gambar": "/2nomor/4.gif"},
    {"nama": "5", "gambar": "/2nomor/5.gif"},
    {"nama": "6", "gambar": "/2nomor/6.gif"},
    {"nama": "7", "gambar": "/2nomor/7.gif"},
    {"nama": "8", "gambar": "/2nomor/8.gif"},
    {"nama": "9", "gambar": "/2nomor/9.gif"},
    {"nama": "10", "gambar": "/2nomor/10.gif"},
    
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist() async {
    for (var i = 0; i < pilihanKata.length; i++) {
      //membuat variabel dari array
      final pilihanKatanya = pilihanKata[i];
      final String gambar = pilihanKatanya["gambar"];
     

      daftarSemuaKata.add(Container(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Detail(
                          nama: pilihanKatanya["nama"],
                          gambar: gambar,
                        ))), //PUSH MATERIAL
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(pilihanKatanya["nama"][0], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
                title: Text(
                  pilihanKatanya["nama"],
                  style: TextStyle(fontSize: 18.0,),
                ),
              ),
            )
          ],
        ),
      ));
    }
  }

//membuat instance dari  array diatas
  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //membuat grid untuk menu-menu pilihan belajar
      body: GridView.count(
        crossAxisCount: 1, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 135.0,
        children: daftarSemuaKata, //ini adalah id dari list array
      ),
    );
  }
}

// DETAIL DARI ITEM YANG DIPILIH
class Detail extends StatelessWidget {
  Detail({
    this.nama,
    this.gambar,
 
    
  });
  final String nama;
  final String gambar;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: new ListView(
        children: <Widget>[
          // Container(
          //   child: Hero(
          //     tag: nama,
          //     child: Material(
          //       child: InkWell(
          //         child: Image.asset(
          //           "img/materi/$gambar",
          //           // "img/materi/2nomor/$gambar",
          //           fit: BoxFit.fill,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Center(
          //     child: Text(
          //       nama,
          //       style: TextStyle(fontSize: 40.0),
          //     ),
          //   ),
          // ),

          // 2
                    Container(
            child: Hero(
              tag: nama,
              child: Material(
                child: InkWell(
                  child: Image.asset(
                    "img/materi$gambar",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Center(
              child: Text(
                nama,
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
