import 'package:flutter/material.dart';


class MateriKataTanya extends StatefulWidget {
  @override
  _MateriKataTanyaState createState() => _MateriKataTanyaState();
}

class _MateriKataTanyaState extends State<MateriKataTanya> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriKataTanya = new List();
//membuat array untuk data menu
  var pilihanKataTanya=[
    {"nama":"Apa", "gambar":"apa.gif"},
    {"nama":"Siapa", "gambar":"siapa.gif"},
    {"nama":"Bagaimana", "gambar":"bagaimana.gif"},
    {"nama":"Dimana", "gambar":"dimana.gif"},
    {"nama":"Kapan", "gambar":"kapan.gif"},
    {"nama":"Mengapa", "gambar":"mengapa.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanKataTanya.length; i++) {
      //membuat variabel dari array
      final pilihanKataTanyanya = pilihanKataTanya[i];
      final String gambar = pilihanKataTanyanya["gambar"];

      daftarMateriKataTanya.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanKataTanyanya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanKataTanyanya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/5katatanya/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanKataTanyanya["nama"], style: TextStyle(fontSize: 20.0),),

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
        title: Text("Belajar Panggilan Keluarga"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriKataTanya, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/5katatanya/$gambar", fit: BoxFit.fill,),
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
