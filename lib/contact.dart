import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CONTACT US",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Welcome To Contact Page",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 5, 89, 7),
                    fontSize: 30,
                    fontFamily: "times new roman",
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                  ),
                ),
                child: Image.asset("assets/icons/pk.jpeg"),
              ),
              const Padding(padding: EdgeInsets.only(top: 20.0, bottom: 30)),
              const Text(
                "Name-PRASHANT KUSHWAHA\n\nContact No - 9977676213\n\nEmail - patelprashant2572@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "times new roman",
                    color: Color.fromARGB(255, 5, 89, 7),
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 50)),
              const Text(
                "-: DEVLOPED BY :-\n PRASHANT PATEL\n(PK)",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
