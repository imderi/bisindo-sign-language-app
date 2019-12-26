import 'package:flutter/material.dart';


class MateriWarna extends StatefulWidget {
  @override
  _MateriWarnaState createState() => _MateriWarnaState();
}

class _MateriWarnaState extends State<MateriWarna> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriWarna = new List();
//membuat array untuk data menu
  var pilihanWarna=[
    {"nama":"Warna", "gambar":"warna.gif"},
    {"nama":"Merah", "gambar":"merah.gif"},
    {"nama":"Biru", "gambar":"biru.gif"},
    {"nama":"Kuning", "gambar":"kuning.gif"},
    {"nama":"Hijau", "gambar":"hijau.gif"},
    {"nama":"Hitam", "gambar":"hitam.gif"},
    {"nama":"Putih", "gambar":"putih.gif"},
    {"nama":"Ungu", "gambar":"ungu.gif"},
    {"nama":"Oranye", "gambar":"oranye.gif"},
    {"nama":"Abu-Abu", "gambar":"abuabu.gif"},
    {"nama":"Coklat", "gambar":"coklat.gif"},
    {"nama":"Perak", "gambar":"perak.gif"},
    {"nama":"Emas", "gambar":"emas.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanWarna.length; i++) {
      //membuat variabel dari array
      final pilihanWarnanya = pilihanWarna[i];
      final String gambar = pilihanWarnanya["gambar"];

      daftarMateriWarna.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanWarnanya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanWarnanya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/10warna/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanWarnanya["nama"], style: TextStyle(fontSize: 20.0),),

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
        title: Text("Belajar Warna"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriWarna, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/10warna/$gambar", fit: BoxFit.fill,),
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
