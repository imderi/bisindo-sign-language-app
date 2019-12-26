import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DaftarKomunitas extends StatefulWidget {
  @override
  _DaftarKomunitasState createState() => _DaftarKomunitasState();
}

class _DaftarKomunitasState extends State<DaftarKomunitas> {
// Controller unuk setiap field text
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerNoTelp = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();

//add data function
  void addData() {
    var url = "http://192.168.43.57/komunitas/adddata.php";

    http.post(url, body: {
      "nama": controllerNama.text,
      "notelp": controllerNoTelp.text,
      "email": controllerEmail.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Daftar Komunitas"),
        ),
        body: new ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.lightBlue[200],
                  child: Text("Ayo gabung bersama komunitas BISINDO, Daftarkan diri kamu segera untuk mendapatkan informasi-informasi event yang akan datang!", style: TextStyle(fontSize: 19.0),)
                ),
                TextField(
                  controller: controllerNama,
                  decoration:
                      new InputDecoration(hintText: "Nama", labelText: "Nama"),
                ),
                TextField(
                  controller: controllerNoTelp,
                  decoration: new InputDecoration(
                      hintText: "08000000000", labelText: "Nomor Telepon"),
                ),
                TextField(
                  controller: controllerEmail,
                  decoration: new InputDecoration(
                      hintText: "contoh@contoh.com", labelText: "Email"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: new Text(
                    "DAFTAR",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    addData();
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (_) => new AlertDialog(
                              title: new Text("Hore Pendaftaran Berhasil!"),
                              content: new Text("Tunggu email dari kami ya!"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("OK!"),
                                  onPressed: () => Navigator.pop(_),
                                )
                              ],
                            ));
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
