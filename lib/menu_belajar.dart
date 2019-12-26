import 'package:flutter/material.dart';
import 'package:skripsi_bisindo02/apaitubisindo.dart';

//kategori materi
import 'package:skripsi_bisindo02/kategoriMateri/materi_abjad.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_hari.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_katakerja.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_katasifat.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_katatanya.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_nomor.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_panggilankeluarga.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_sapaan.dart';
import 'package:skripsi_bisindo02/kategoriMateri/materi_warna.dart';


class Belajar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      //mengatur panjang grid
      childAspectRatio: MediaQuery.of(context).size.height / 950,
      children: <Widget>[
        //0 Apa Itu BISINDO?
         InkWell(
           onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
             builder: (BuildContext context)=> new ApaituBisindo(),
           )),
           child: Card(
             child: Column(
               children: <Widget>[
                 Image.asset("img/materi/5katatanya/apa.gif", fit: BoxFit.cover,),
                 Padding(padding: EdgeInsets.all(2.0),),
                 Text("Apa itu BISINDO?", style: TextStyle(fontSize: 18.0))
               ],
             ),
           ),
         ),

        //1 Materi Abjad
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriAbjad(), 
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/1abjad/1_A.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Abjad", style: TextStyle(fontSize: 18.0))
              ],
            ),
          ),
        ),

        //2 Materi Nomor
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriNomor(), 
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/2nomor/Nomor.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Nomor", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),

        //3 materi Sapaan
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriSapaan(), // sementara warning
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/3sapaan/assalamualikum.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Sapaan", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),

        // //4 materi Panggilan
        // InkWell(
        //   onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
        //     builder: (BuildContext context)=> new MateriKataGantiOrang(), // sementara warning
        //   )),
        //   child: Card(
        //     child: Column(
        //       children: <Widget>[
        //         Image.asset("img/contoh_manusia01.gif", fit: BoxFit.cover,),
        //         Padding(padding: EdgeInsets.all(2.0),),
        //         Text("Kata Ganti Orang", style: TextStyle(fontSize: 18.0),)
        //       ],
        //     ),
        //   ),
        // ),

        // 5 Kata Tanya
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriKataTanya(), // sementara warning
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/5katatanya/apa.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Kata Tanya", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),

        // 6 Panggilan Keluarga
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriPanggilanKeluarga(), // sementara warning
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/6panggilankeluarga/ibu.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Panggilan Keluarga", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),
        
        // 7 Hari
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriHari(), // sementara warning
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/7hari/hari.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Hari", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),

        // 8 Kata Kerja
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriKataKerja(), // sementara warning
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/8katakerja/kerja.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Kata Kerja", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),

        // 9 Kata Sifat
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriKataSifat(), // sementara warning
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/9katasifat/semangat.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Kata Sifat", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),
        
        // 10 Warna
        InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context)=> new MateriWarna(), // sementara warning
          )),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("img/materi/10warna/warna.gif", fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(2.0),),
                Text("Warna", style: TextStyle(fontSize: 18.0),)
              ],
            ),
          ),
        ),


      ],
    );
  }
}

