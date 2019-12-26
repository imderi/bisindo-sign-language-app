import 'package:flutter/material.dart';


class MateriKataSifat extends StatefulWidget {
  @override
  _MateriKataSifatState createState() => _MateriKataSifatState();
}

class _MateriKataSifatState extends State<MateriKataSifat> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriKataSifat = new List();
//membuat array untuk data menu
  var pilihanKataSifat=[
    {"nama":"Malas", "gambar":"malas.gif"},
    {"nama":"Rajin", "gambar":"rajin.gif"},
    {"nama":"Baik", "gambar":"baik.gif"},
    {"nama":"Emosi", "gambar":"emosi.gif"},
    {"nama":"Semangat", "gambar":"semangat.gif"},
    {"nama":"Marah", "gambar":"marah.gif"},
    {"nama":"Sabar", "gambar":"sabar.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanKataSifat.length; i++) {
      //membuat variabel dari array
      final pilihanKataSifatnya = pilihanKataSifat[i];
      final String gambar = pilihanKataSifatnya["gambar"];

      daftarMateriKataSifat.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanKataSifatnya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanKataSifatnya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/9katasifat/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanKataSifatnya["nama"], style: TextStyle(fontSize: 20.0),),

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
        title: Text("Belajar Kata Sifat"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriKataSifat, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/9katasifat/$gambar", fit: BoxFit.fill,),
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
