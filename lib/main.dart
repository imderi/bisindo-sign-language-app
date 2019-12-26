import 'package:flutter/material.dart';

//import untuk view dari page diluar kode main
import 'menu_kuis.dart';
import 'menu_belajar.dart';
import 'package:skripsi_bisindo02/menu_semuakata.dart';

//import screen appdrawer
import 'package:skripsi_bisindo02/daftar_komunitas/daftar_komunitas.dart';
import 'tentang.dart';

//biar orientasinya gak otomatis
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ini kode biar gak rotate otomatis
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Belajar BISINDO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          // untuk menu yang letaknya ada di kiri appbar
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: null,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage("img/appdrawerlogo.jpg"),
                          fit: BoxFit.cover)),
                ),
                // Menu appdrawer
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.assignment_ind,
                      size: 45.0,
                    ),
                    title: Text(
                      "Daftar Komunitas",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    subtitle: Text("Ayo gabung dengan kami!"),
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new DaftarKomunitas(), // sementara warning
                    )),
                  ),
                ),
                //check crud
                //Card(
                //   child: ListTile(
                //     leading: Icon(
                //       Icons.assignment_ind,
                //       size: 45.0,
                //     ),
                //     title: Text(
                //       "Cek CRUD databaw",
                //       style: TextStyle(fontSize: 18.0),
                //     ),
                //     subtitle: Text("cuma buat cek aja"),
                //     onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //       builder: (BuildContext context) =>
                //           new LihatData(), // sementara warning
                //     )),
                //   ),
                // ),

                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.bubble_chart,
                      size: 45.0,
                    ),
                    title: Text(
                      "Tentang",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    subtitle: Text("Anything about this App & Me"),
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Tentang(), // sementara warning
                    )),
                  ),
                ),


              ],
            ),
          ),
          appBar: AppBar(
            title: Text(
              "BISINDO",
            ),

            //Membuat tabbar sebagai menu navigasi
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(Icons.book),
                    text: "Belajar"), //tab untuk menu_belajar
                Tab(
                    icon: Icon(Icons.assignment),
                    text: "Kuis"), //tab untuk menu_kuis
                Tab(
                    icon: Icon(Icons.collections_bookmark),
                    text: "Semua Kata"), //tab untuk semua kata
              ],
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
                //memanggil view dari page lain
                Belajar(), //menu_belajar.dart
                MenuKuis(), //menu_kuis.dart
                SemuaKata(), //menu belajar
              ],
            ),
          )),
    );
  }
}
