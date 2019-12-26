import 'package:flutter/material.dart';


class MateriKataKerja extends StatefulWidget {
  @override
  _MateriKataKerjaState createState() => _MateriKataKerjaState();
}

class _MateriKataKerjaState extends State<MateriKataKerja> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriKataKerja = new List();
//membuat array untuk data menu
  var pilihanKataKerja=[
    {"nama":"Bangun", "gambar":"bangun.gif"},
    {"nama":"Makan", "gambar":"makan.gif"},
    {"nama":"Minum", "gambar":"minum.gif"},
    {"nama":"Sekolah", "gambar":"sekolah.gif"},
    {"nama":"Kerja", "gambar":"kerja.gif"},
    {"nama":"Tidur", "gambar":"tidur.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanKataKerja.length; i++) {
      //membuat variabel dari array
      final pilihanKataKerjanya = pilihanKataKerja[i];
      final String gambar = pilihanKataKerjanya["gambar"];

      daftarMateriKataKerja.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanKataKerjanya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanKataKerjanya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/8katakerja/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanKataKerjanya["nama"], style: TextStyle(fontSize: 20.0),),

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
        title: Text("Belajar Kata Kerja"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriKataKerja, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/8katakerja/$gambar", fit: BoxFit.fill,),
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
