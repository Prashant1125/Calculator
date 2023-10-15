import 'package:calculator/about.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'contact.dart';
import 'splash.dart';
import 'dart:io';

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
      // ignore: non_constant_identifier_names
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
          foregroundColor: Colors.pink,
          padding: const EdgeInsets.all(25.0),
          backgroundColor: Colors.black,
          side: const BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        onPressed: () => onButtonClick(text),
        child: Text(
          text,
          style: const TextStyle(
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
        title: const Text(
          "CALCULATOR",
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 0,
                  child: Text("Contact Us"),
                ),
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text("About "),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Contact()));
              }
              if (value == 1) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const Text(
            "-:INPUTS:-",
            style: TextStyle(color: Colors.cyan),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 6, color: Colors.cyan),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text(
                input,
                style: const TextStyle(
                  fontSize: 50.0,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          const Text(
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
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text(
                output,
                style: const TextStyle(
                  fontSize: 70.0,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          const Text("--------------"),
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.pink,
                    padding: const EdgeInsets.all(25.0),
                    backgroundColor: Colors.black,
                    side: const BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  onPressed: () => exit(0),
                  child: const Text(
                    "exit",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      fontFamily: "",
                      color: Colors.cyan,
                    ),
                  ),
                ),
              ),
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
    );
  }
}
