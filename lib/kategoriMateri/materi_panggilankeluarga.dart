import 'package:flutter/material.dart';


class MateriPanggilanKeluarga extends StatefulWidget {
  @override
  _MateriPanggilanKeluargaState createState() => _MateriPanggilanKeluargaState();
}

class _MateriPanggilanKeluargaState extends State<MateriPanggilanKeluarga> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriPanggilanKeluarga = new List();
//membuat array untuk data menu
  var pilihanPanggilanKeluarga=[
    {"nama":"Ibu", "gambar":"ibu.gif"},
    {"nama":"Bapak", "gambar":"bapak.gif"},
    {"nama":"Adik", "gambar":"adik.gif"},
    {"nama":"Kakak", "gambar":"kakak.gif"},
    {"nama":"Nenek", "gambar":"nenek.gif"},
    {"nama":"Kakek", "gambar":"kakek.gif"},

  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanPanggilanKeluarga.length; i++) {
      //membuat variabel dari array
      final pilihanPanggilanKeluarganya = pilihanPanggilanKeluarga[i];
      final String gambar = pilihanPanggilanKeluarganya["gambar"];

      daftarMateriPanggilanKeluarga.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanPanggilanKeluarganya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanPanggilanKeluarganya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/6panggilankeluarga/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanPanggilanKeluarganya["nama"], style: TextStyle(fontSize: 20.0),),

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
        children: daftarMateriPanggilanKeluarga, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/6panggilankeluarga/$gambar", fit: BoxFit.fill,),
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
