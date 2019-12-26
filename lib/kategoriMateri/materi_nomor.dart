import 'package:flutter/material.dart';


class MateriNomor extends StatefulWidget {
  @override
  _MateriNomorState createState() => _MateriNomorState();
}

class _MateriNomorState extends State<MateriNomor> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriNomor = new List();
//membuat array untuk data menu
  var pilihanNomor=[
    {"nama":"Nomor", "gambar":"Nomor.gif"},
    {"nama":"1", "gambar":"1.gif"},
    {"nama":"2", "gambar":"2.gif"},
    {"nama":"3", "gambar":"3.gif"},
    {"nama":"4", "gambar":"4.gif"},
    {"nama":"5", "gambar":"5.gif"},
    {"nama":"6", "gambar":"6.gif"},
    {"nama":"7", "gambar":"7.gif"},
    {"nama":"8", "gambar":"8.gif"},
    {"nama":"9", "gambar":"9.gif"},
    {"nama":"10", "gambar":"10.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanNomor.length; i++) {
      //membuat variabel dari array
      final pilihanNomornya = pilihanNomor[i];
      final String gambar = pilihanNomornya["gambar"];

      daftarMateriNomor.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanNomornya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanNomornya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/2nomor/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanNomornya["nama"], style: TextStyle(fontSize: 20.0),),

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
        title: Text("Belajar Nomor"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriNomor, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/2nomor/$gambar", fit: BoxFit.fill,),
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
