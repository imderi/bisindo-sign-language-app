import 'package:flutter/material.dart';


class MateriSapaan extends StatefulWidget {
  @override
  _MateriSapaanState createState() => _MateriSapaanState();
}

class _MateriSapaanState extends State<MateriSapaan> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriSapaan = new List();
//membuat array untuk data menu
  var pilihanSapaan=[
    {"nama":"Assalamualaikum", "gambar":"assalamualikum.gif"},
    {"nama":"Halo", "gambar":"halo.gif"},
    {"nama":"Selamat Pagi", "gambar":"selamatpagi.gif"},
    {"nama":"Selamat Datang", "gambar":"selamatdatang.gif"},
    {"nama":"Terimakasih", "gambar":"terimakasih.gif"},
    {"nama":"Sama-sama", "gambar":"samasama.gif"},
    {"nama":"Maaf", "gambar":"maaf.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanSapaan.length; i++) {
      //membuat variabel dari array
      final pilihanSapaannya = pilihanSapaan[i];
      final String gambar = pilihanSapaannya["gambar"];

      daftarMateriSapaan.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanSapaannya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanSapaannya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/3sapaan/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanSapaannya["nama"], style: TextStyle(fontSize: 20.0),),

                  ],
                ),
              )
          )
      );
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
      appBar: AppBar(
        title: Text("Belajar Sapaan"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriSapaan, //ini adalah id dari list array

      ),
    );
  }
}

// DETAIL DARI ITEM YANG DIPILIH
class Detail extends StatelessWidget {
  Detail({this.nama,this.gambar,});
  final String nama;
  final String gambar;
//  BagianIsi({this.isi})
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          Container(
              child: 
              Hero(
                  tag: nama,
                  child: Material(
                    child: InkWell(
                      child: Image.asset("img/materi/3sapaan/$gambar", fit: BoxFit.fill,),
                    ),
                  ),
              ),
          ),
          Padding(padding: EdgeInsets.all(10.0),),

          Center(
            child: Center(
              child: Text(nama, style: TextStyle(fontSize: 40.0),),
            ),
          ),

        ],
      ),
    );
  }
}
