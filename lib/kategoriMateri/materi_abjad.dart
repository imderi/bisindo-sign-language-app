import 'package:flutter/material.dart';


class MateriAbjad extends StatefulWidget {
  @override
  _MateriAbjadState createState() => _MateriAbjadState();
}

class _MateriAbjadState extends State<MateriAbjad> {
//list / array berikut dipanggil didalam gridview pada scaffold
  List<Container> daftarMateriAbjad = new List();
//membuat array untuk data menu
  var pilihanAbjad=[
    {"nama":"A", "gambar":"1_A.gif"},
    {"nama":"B", "gambar":"2_B.gif"},
    {"nama":"C", "gambar":"3_C.gif"},
    {"nama":"D", "gambar":"4_D.gif"},
    {"nama":"E", "gambar":"5_E.gif"},
    {"nama":"F", "gambar":"6_F.gif"},
    {"nama":"G", "gambar":"7_G.gif"},
    {"nama":"H", "gambar":"8_H.gif"},
    {"nama":"I", "gambar":"9_I.gif"},
    {"nama":"J", "gambar":"10_J.gif"},
    {"nama":"K", "gambar":"11_K.gif"},
    {"nama":"L", "gambar":"12_L.gif"},
    {"nama":"M", "gambar":"13_M.gif"},
    {"nama":"N", "gambar":"14_N.gif"},

    {"nama":"O", "gambar":"15_O.gif"},
    {"nama":"P", "gambar":"16_P.gif"},
    {"nama":"Q", "gambar":"17_Q.gif"},
    {"nama":"R", "gambar":"18_R.gif"},
    {"nama":"S", "gambar":"19_S.gif"},
    {"nama":"T", "gambar":"20_T.gif"},
    {"nama":"U", "gambar":"21_U.gif"},
    {"nama":"V", "gambar":"22_V.gif"},
    {"nama":"W", "gambar":"23_W.gif"},
    {"nama":"X", "gambar":"24_X.gif"},
    {"nama":"Y", "gambar":"25_Y.gif"},
    {"nama":"Z", "gambar":"26_Z.gif"},
  ];

//Membuat list untuk data array diatas berdasarkan jumlah array menggunakan pengulangan
  _buatlist()async {
    for (var i = 0; i < pilihanAbjad.length; i++) {
      //membuat variabel dari array
      final pilihanAbjadnya = pilihanAbjad[i];
      final String gambar = pilihanAbjadnya["gambar"];

      daftarMateriAbjad.add(
          Container(
              padding: EdgeInsets.all(2.0),
              child: new Card(
                child: Column(
                  children: <Widget>[

                    //membuat animasi hero (nama widgetnya memang Hero :) )
                    Hero(
                      tag: pilihanAbjadnya["nama"],
                      child: Material( //untuk transit ke halaman berikutnya
                        child: InkWell( //animasi untuk memperbesar dan memperkecil
                          //Rute saat di klik menuju page yg dituju
                          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=> new Detail(nama: pilihanAbjadnya["nama"], gambar: gambar,), // sementara warning
                          )),
                          child: Image.asset("img/materi/1abjad/$gambar", fit: BoxFit.cover,),
                        ),
                      ),
                    ),
//                Image.asset("img/$gambar", fit: BoxFit.cover,), //Berikut adalah kartu dari grid yang berisi gambar dan teks
                    //membuat jarak / padding antara gambar dan teks pada menu
                    Padding(padding: EdgeInsets.all(2.0),),
                    Text(pilihanAbjadnya["nama"], style: TextStyle(fontSize: 20.0),),

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
        title: Text("Belajar Abjad"),
      ),
      body: GridView.count(
        crossAxisCount: 2, //membuat 2 item pada 1 baris
        //mengatur panjang grid
        childAspectRatio: MediaQuery.of(context).size.height / 950,
        children: daftarMateriAbjad, //ini adalah id dari list array

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
                      child: Image.asset("img/materi/1abjad/$gambar", fit: BoxFit.fill,),
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
