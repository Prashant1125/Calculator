import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).whenComplete(
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const HomePage(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only()),
          const Text(
            "WELCOME TO PK CALCULALOR",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 2, 77, 4),
                fontFamily: "times new roman",
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 75)),
          Material(
            elevation: 10.0,
            shadowColor: Colors.green,
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              "assets/icons/logo1.png",
              height: 250,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 75)),
          const Text(
            "Do \nYour Calculations",
            textAlign: TextAlign.center,
            
            style: TextStyle(
                color: Color.fromARGB(255, 2, 77, 4),
                fontFamily: "times new roman",
                
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
