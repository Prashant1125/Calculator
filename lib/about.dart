import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          "ABOUT THIS APP",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text(
              "Welcome To AboutPage",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontFamily: "times new roman",
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "->The accuracy you always needed.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "->The fastest way to calculate.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "->Makes all your work as smooth as you want it.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "->When you need lightning fast calculations.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "->Just the useful gadget you need.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "-> Designed to attract numbers.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "->Results of 100% accuracy. Every time.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            Text(
              "REFERENCE",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "Flutter , Dart , Desi Programmer, YouTube , Google, Github",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
