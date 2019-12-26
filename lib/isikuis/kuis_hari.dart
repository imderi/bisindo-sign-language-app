import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new HariQuiz();

class HariQuiz {
  var images = [
    "besok",
    "depan",
    "hari",
    "jumat",
    "kamis",
    "kemarin",
    "lalu",
    "lusa",
    "minggu",
    "rabu",
    "selasa",
    "senin",
    
  ];

  var questions = [
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
    "Ini adalah?",
  ];

  var choices = [
    ["Besok", "Depan", "Hari", "Jumat"],
    ["Besok", "Depan", "Hari", "Jumat"],
    ["Besok", "Depan", "Hari", "Jumat"],
    ["Besok", "Depan", "Hari", "Jumat"],
    ["Kamis", "Kemarin", "Lalu", "Lusa"],
    ["Kamis", "Kemarin", "Lalu", "Lusa"],
    ["Kamis", "Kemarin", "Lalu", "Lusa"],
    ["Kamis", "Kemarin", "Lalu", "Lusa"],
    ["Minggu", "Rabu", "Sabtu", "Selasa"],
    ["Minggu", "Rabu", "Sabtu", "Selasa"],
    ["Minggu", "Rabu", "Sabtu", "Selasa"],
    ["Minggu", "Rabu", "Sabtu", "Selasa"],
    ["Senin", "Rabu", "Sabtu", "Selasa"],
    
  ];

  var correctAnswers = [
    "Besok",
    "Depan",
    "Hari",
    "Jumat",
    "Kamis",
    "Kemarin",
    "Lalu",
    "Lusa",
    "Minggu",
    "Rabu",
    "Selasa",
    "Senin",
  ];
}

class KuisHari extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new KuisHariState();
  }
}

class KuisHariState extends State<KuisHari> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Kuis Hari"),
            ),
            automaticallyImplyLeading: false,
          ),
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(0)),

                new Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "Pertanyaan ke ${questionNumber + 1} dari ${quiz.questions.length}",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                      new Text(
                        "Benar: $finalScore",
                        style: new TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(10.0)),

                new Image.asset(
                  "img/materi/7hari/${quiz.images[questionNumber]}.gif",
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text(
                  quiz.questions[questionNumber],
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Tombol 1
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][0],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //Tombol 2
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][1],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Tombol 3
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][2],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //Tombol 4
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][3],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                new Padding(padding: EdgeInsets.all(15.0)),

                new Container(
                    alignment: Alignment.bottomCenter,
                    child: new MaterialButton(
                        minWidth: 240.0,
                        height: 50.0,
                        color: Colors.red,
                        onPressed: resetQuiz,
                        child: new Text(
                          "Keluar",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ))),
              ],
            ),
          ),
        ));
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Hasil Kuis"),
          ),
          automaticallyImplyLeading: false,
        ),
        body: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 200.0),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text("Jawaban Benar", style: TextStyle(fontSize: 23.0)),
                    Text("$score", style: TextStyle(fontSize: 100.0)),
                    Text(
                      "dari ${quiz.questions.length} pertanyaan",
                      style: new TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 200.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: new Text(
                  "Ulangi Kuis",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
