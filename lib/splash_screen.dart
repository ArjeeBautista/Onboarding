// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:dab_musicaloha/firstscreen/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => const MyApp(),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.redAccent, Colors.orangeAccent],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: 300, // Adjust width as needed
                height: 400, // Adjust height as needed
                child: Image(
                  image: AssetImage('assets/veryfinalvrbologo.png'),
                ),
              ),
            ),
          ),
        ),
        // floatingActionButton: const CircularProgressIndicator(),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
