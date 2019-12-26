import 'package:flutter/material.dart';

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
//            height: 240.0,
              child: 
              Hero(
                  tag: nama,
                  child: Material(
                    child: InkWell(
//                      child: Image.asset("img/$gambar", fit: BoxFit.none,),
                      child: Image.asset("img/materi/1abjad/$gambar", fit: BoxFit.fill,),
                    ),
                  ),
              ),


          ),

          Center(
            child: Center(
              child: Text(nama, style: TextStyle(fontSize: 30.0),),
            ),
          ),

        ],
      ),
    );
  }
}

//class BagianNama extends StatelessWidget {
//  BagianNama({this.nama});
//  final String nama;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Center(
//        child: Text(
//          nama,
////          style: TextStyle(fontSize: 30.0, color: Colors.black),
//        ),
//      ),
//    );
//  }
//}
