import 'package:flutter/material.dart';


class MateriHari extends StatefulWidget {
  @override
  _MateriHariState createState() => _MateriHariState();
}

class _MateriHariState extends State<MateriHari> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriHari = new List();
//membuat array untuk data menu
  var pilihanHari=[
    {"nama":"Hari", "gambar":"hari.gif"},
    {"nama":"Senin", "gambar":"senin.gif"},
    {"nama":"Selasa", "gambar":"selasa.gif"},
    {"nama":"Rabu", "gambar":"rabu.gif"},
    {"nama":"Kamis", "gambar":"kamis.gif"},
    {"nama":"Jumat", "gambar":"jumat.gif"},
    {"nama":"Sabtu", "gambar":"sabtu.gif"},
    {"nama":"Minggu", "gambar":"minggu.gif"},
    {"nama":"Besok", "gambar":"besok.gif"},
    {"nama":"Kemarin", "gambar":"kemarin.gif"},
    {"nama":"Depan", "gambar":"depan.gif"},
    {"nama":"Lalu", "gambar":"lalu.gif"},
    {"nama":"Lusa", "gambar":"lusa.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanHari.length; i++) {
      //membuat variabel dari array
      final pilihanHarinya = pilihanHari[i];
      final String gambar = pilihanHarinya["gambar"];

      daftarMateriHari.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanHarinya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanHarinya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/7hari/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanHarinya["nama"], style: TextStyle(fontSize: 20.0),),

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
        title: Text("Belajar Hari"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriHari, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/7hari/$gambar", fit: BoxFit.fill,),
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
