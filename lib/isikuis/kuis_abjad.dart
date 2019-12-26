import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new AbjadQuiz();

class AbjadQuiz {
  var images = [

    "5_E",
    "6_F",
    "7_G",

    "1_A",
    "2_B",
    "3_C",
    "4_D",
    
    
    "11_K",
    "12_L",
    "13_M",
    "14_N",

    "10_J",
    "8_H",
    "9_I",

    "19_S",
    "20_T",
    "21_U",
    "22_V",

    "15_O",
    "16_P",
    "17_Q",
    "18_R",

    "25_Y",
    "26_Z",

    "23_W",
    "24_X",

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


    ["B", "E", "F", "A"], //E
    ["C", "V", "F", "P"], //F
    ["R", "S", "O", "G"], //G

    ["U", "V", "O", "A"], //A
    ["B", "E", "F", "P"], //B
    ["C", "D", "P", "A"], //C
    ["C", "D", "B", "P"], //D

    ["E", "R", "K", "P"], //K
    ["C", "D", "B", "L"], //L
    ["E", "N", "B", "M"], //M
    ["B", "M", "N", "P"], //N
    
    ["M", "J", "I", "U"], //J
    ["H", "J", "K", "L"], //H
    ["N", "Y", "J", "I"], //I


    ["G", "S", "B", "A"], //S
    ["K", "D", "T", "Z"], //T
    ["N", "U", "W", "Z"], //U
    ["C", "V", "Y", "A"], //V

    ["G", "O", "B", "Q"], //O
    ["C", "F", "P", "V"], //P
    ["Q", "O", "C", "D"], //Q
    ["R", "K", "B", "P"], //R

    ["Z", "U", "V", "Y"], //Y
    ["R", "Z", "B", "N"], //Z

    ["W", "N", "V", "U"], //W
    ["D", "P", "X", "K"], //X

  ];

  var correctAnswers = [
    "E",
    "F",
    "G",

    "A",
    "B",
    "C",
    "D",

    "K",
    "L",
    "M",
    "N",

    "J",
    "H",
    "I",


    "S",
    "T",
    "U",
    "V",

    "O",
    "P",
    "Q",
    "R",

    "Y",
    "Z",

    "W",
    "X"
  ];
}

class KuisAbjad extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new KuisAbjadState();
  }
}

class KuisAbjadState extends State<KuisAbjad> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Kuis Abjad"),
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
                  "img/materi/1abjad/${quiz.images[questionNumber]}.gif",
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
                    // [0] adalah isi dari list
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
