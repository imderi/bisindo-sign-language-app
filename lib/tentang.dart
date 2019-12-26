import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  @override
  _TentangState createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/bg_aboutus.jpg"), fit: BoxFit.fill)),
        child: ListView(
          children: <Widget>[
            Center(
              child: Text("السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ",style: TextStyle(color: Colors.white, fontSize: 25.0),),
            ),
            Padding(padding: EdgeInsets.all(3.0),),
            Container(
              height: 200,
              child: Image.asset("img/deri.gif"),
            ),

            RichText(
              text: TextSpan(
                // text: 'السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ\n',
                // style: DefaultTextStyle.of(context).style,
                
                children: <TextSpan>[
                  TextSpan(text: '\nPuji syukur hanya untuk Allah, shalawat dan salam kepada nabi kita Muhammad ﷺ.\n'),
                  TextSpan(
                    text: 'Perkenalkan nama saya ',
                  ),
                  TextSpan(
                      text: 'Deri Nuriansyah, ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Saya anak dari orangtua yang luar biasa yaitu Ibu Dali dan Bapak Dede (Mom, Dad, i made it 🤣) Oh iya nama adik saya Rizal.\n'),
                  TextSpan(text: 'Aplikasi sederhana ini dirancang untuk memenuhi persyaratan Skripsi S1 Teknik Informatika Nusamandiri.'),
                  TextSpan(text: '\nPastinya saya berterimakasih sama pihak-pihak yang telah membantu saya dalam merancang aplikasi ini:\n'),
                  TextSpan(text: '-Pembimbing Saya Bapak Hermansyah Kuswanto \n-Keluarga tercinta yang telah memberikan banyak dukungan\n-Komunitas BISINDO yang saya cintai'),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
