import 'package:flutter/material.dart';

class ApaituBisindo extends StatefulWidget {
  @override
  _ApaituBisindoState createState() => _ApaituBisindoState();
}

class _ApaituBisindoState extends State<ApaituBisindo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apa itu BISINDO ?"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/bg_aboutus.jpg"), fit: BoxFit.fill)),
        child: ListView(
          children: <Widget>[
            Center(
              // child: Text("Apa Itu BISINDO ?",style: TextStyle(color: Colors.white, fontSize: 25.0),),
            ),
            Padding(padding: EdgeInsets.all(3.0),),
            Container(
              height: 200,
              child: Image.asset("img/materi/5katatanya/apa.gif"),
            ),
            Padding(padding: EdgeInsets.all(5.0),),

            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
      
                children: <TextSpan>[
                  TextSpan(text: 'Bahasa Isyarat Indonesia (BISINDO) adalah salah satu bahasa isyarat yang berlaku di Indonesia. Di Indonesia ada dua bahasa isyarat yang digunakan yaitu Sistem Bahasa Isyarat Indonesia atau SIBI dan Bahasa Isyarat Indonesia atau BISINDO.\n\nPerbedaan mendasar antara SIBI dan BISINDO adalah SIBI menggunakan abjad sebagai panduan bahasa isyarat satu tangan, sementara BISINDO menggunakan gerakan tangan (dua tangan) sebagai upaya komunikasi antar pengguna bahasa isyarat.\n\n'),
                  TextSpan(text: 'BISINDO merupakan bahasa isyarat alami budaya asli Indonesia yang dengan mudah dapat digunakan dalam pergaulan isyarat kaum tunarungu sehari-hari.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
