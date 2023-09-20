import 'dart:async';

import 'package:clock_app/screen/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 810,
                width: 860,
                child: Image.asset("assets/wallpepar.jpg",),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
