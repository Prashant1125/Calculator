import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'splash.dart';

void main() {
  runApp(const MaterialApp(
    home: Splash(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double firstnum = 0.0;
  double secondnum = 0.0;
  var input = '';
  var output = '';
  var operation = '';

  onButtonClick(value) {
    if (value == 'AC') {
      input = '';
      output = '';
    } else if (value == 'DEL') {
      input = input.substring(0, input.length - 1);
    } else if (value == '=') {
      var userInput = input;
      userInput = input.replaceAll('x', '*');
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var FinalValue = expression.evaluate(EvaluationType.REAL, cm);
      output = FinalValue.toString();
      if (output.endsWith(".0")) {
        output = output.substring(0, output.length - 2);
      }
    } else {
      input = input + value;
    }

    setState(() {});
  }

  Widget custombutton(String text) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(25.0),
          backgroundColor: Colors.black,
          onPrimary: Colors.pink,
          side: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        onPressed: () => onButtonClick(text),
        child: Text(
          text,
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "CALCULATOR",
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "-:INPUTS:-",
              style: TextStyle(color: Colors.cyan),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 6, color: Colors.cyan),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  input,
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Text(
              "-:RESULT:-",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 6, color: Colors.green),
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  output,
                  style: TextStyle(
                    fontSize: 70.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Text("--------------"),
            Row(
              children: <Widget>[
                custombutton("%"),
                custombutton("AC"),
                custombutton("DEL"),
                custombutton("/"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("7"),
                custombutton("8"),
                custombutton("9"),
                custombutton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("4"),
                custombutton("5"),
                custombutton("6"),
                custombutton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("1"),
                custombutton("2"),
                custombutton("3"),
                custombutton("x"),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton("0"),
                custombutton("."),
                custombutton("00"),
                custombutton("="),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
