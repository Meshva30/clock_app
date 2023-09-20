import 'package:clock_app/screen/HomeScreen.dart';
import 'package:clock_app/screen/splacescreen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/':(context) => SplaceScreen(),
        'home':(context) => HomeScreen(),
     }
    ),
  );
}