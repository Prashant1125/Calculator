import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter demo",
      theme: ThemeData(
          primarySwatch: Colors.indigo, scaffoldBackgroundColor: Colors.black),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int firstnum = 0;
  int secondnum = 0;
  String texttodisplay = "";
  String display = "";

  String res = "";
  String? oprationperform;

  void btnclick(String btnval) {
    if (btnval == "AC") {
      display = "";
      texttodisplay = "";
      firstnum = 0;
      secondnum = 0;
      res = "";
    } else if (btnval == "DEL") {
      res = res.substring(0, res.length - 1);
      display = display.substring(0, display.length - 1);
    } else if (btnval == "+" ||
        btnval == "-" ||
        btnval == "x" ||
        btnval == "/" ||
        btnval == "%") {
      firstnum = int.parse(texttodisplay);
      res = "";
      oprationperform = btnval;
    } else if (btnval == "=") {
      secondnum = int.parse(texttodisplay);

      if (oprationperform == "+") {
        res = (firstnum + secondnum).toString();
      }
      if (oprationperform == "-") {
        res = (firstnum - secondnum).toString();
      }
      if (oprationperform == "x") {
        res = (firstnum * secondnum).toString();
      }
      if (oprationperform == "/") {
        res = (firstnum / secondnum).toString();
      }
      if (oprationperform == "%") {
        res = ((firstnum * secondnum) / 100).toString();
      }
    } else {
      res = int.parse(texttodisplay + btnval).toString();
    }
    if (btnval != "DEL" && btnval != "AC" && btnval != "=")
      display = display + btnval;
    setState(() {
      texttodisplay = res;
    });

    setState(() {});
  }

  Widget custombutton(String btnval) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(25.0),
          backgroundColor: Colors.black,
          side: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        onPressed: () => btnclick(btnval),
        child: Text(
          "$btnval",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
            fontFamily: "",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "calculator",
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$display",
                  style: TextStyle(
                    fontSize: 80.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$res",
                  style: TextStyle(
                    fontSize: 80.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                custombutton("AC"),
                custombutton("DEL"),
                custombutton("%"),
                custombutton("/"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("9"),
                custombutton("8"),
                custombutton("7"),
                custombutton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("6"),
                custombutton("5"),
                custombutton("4"),
                custombutton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("3"),
                custombutton("2"),
                custombutton("1"),
                custombutton("x"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("."),
                custombutton("0"),
                custombutton("="),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
