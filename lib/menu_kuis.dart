import 'package:flutter/material.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_hari.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_katagantiorang.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_katakerja.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_katasifat.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_katatanya.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_nomor.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_panggilankeluarga.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_sapaan.dart';
import 'package:skripsi_bisindo02/isikuis/kuis_warna.dart';
import './isikuis/kuis_abjad.dart';

void main(){
  runApp(
      new MaterialApp(
        home: new MenuKuis(),
      )
  );
}

class MenuKuis extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MenuKuisState();
  }
}

class MenuKuisState extends State<MenuKuis>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
             
        // margin: const EdgeInsets.all(7.0),
        child: new ListView(

          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Padding(padding: EdgeInsets.all(3.0),),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                    child: Text("1", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Abjad", style: TextStyle(fontSize: 18.0),),
                  onTap: startQuizAbjad,
                ),
              ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    child: Text("2", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Nomor", style: TextStyle(fontSize: 18.0,),),
                  onTap: startQuizNomor,
                ),
              ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Text("3", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Sapaan", style: TextStyle(fontSize: 18.0,),),
                  onTap: startQuizSapaan,
                ),
              ),

              // Card(
              //   child: ListTile(
              //     leading: CircleAvatar(
              //       backgroundColor: Colors.cyan,
              //       child: Text("4", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),),
              //     ),
              //     title: Text("Kuis Kata Ganti Orang", style: TextStyle(fontSize: 18.0,),),
              //     onTap: startQuizKatagantiOrang,
              //   ),
              // ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    child: Text("4", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Kata Tanya", style: TextStyle(fontSize: 18.0,),),
                  onTap: startQuizKataTanya,
                ),
              ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Text("5", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Panggilan Keluarga", style: TextStyle(fontSize: 18.0),),
                  onTap: startQuizPanggilanKeluarga,
                ),
              ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigoAccent,
                    child: Text("6", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Hari", style: TextStyle(fontSize: 18.0),),
                  onTap: startQuizHari,
                ),
              ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lime,
                    child: Text("7", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Kata Kerja", style: TextStyle(fontSize: 18.0),),
                  onTap: startQuizKataKerja,
                ),
              ),

              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Text("8", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Kuis Kata Sifat", style: TextStyle(fontSize: 18.0),),
                  onTap: startQuizKataSifat,
                ),
              ),

              
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Text("9", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),
                  title: Text("Warna", style: TextStyle(fontSize: 18.0),),
                  onTap: startQuizKataWarna,
                ),
              ),



          ],
        ),
      ),


    );
  }

  void startQuizAbjad(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisAbjad()));
    });
  }
    void startQuizNomor(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisNomor()));
    });
  }
  void startQuizSapaan(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisSapaan()));
    });
  }
  void startQuizKatagantiOrang(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisKataGantiOrang()));
    });
  }
  void startQuizKataTanya(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisKataTanya()));
    });
  }
  void startQuizPanggilanKeluarga(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisPanggilanKeluarga()));
    });
  }
    void startQuizHari(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisHari()));
    });
  }
    void startQuizKataKerja(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisKataKerja()));
    });
  }
    void startQuizKataSifat(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisKataSifat()));
    });
  }
      void startQuizKataWarna(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new KuisWarna()));
    });
  }
}






  
