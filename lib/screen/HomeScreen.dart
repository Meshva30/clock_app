import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

DateTime dateTime = DateTime.now();

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (dateTime != DateTime.now()) {
        setState(() {
          dateTime = DateTime.now();
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            Center(
              child: Container(
                height: 290,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/clock.jpeg'),radius: 60),
                      SizedBox(height: 10,),
                      Text("Clock App",style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
            ListTile(leading: Icon(Icons.rectangle), title: Text("About")),

          ],
        )),
        appBar: AppBar(
          title: Text('Clock App',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${dateTime.hour}:${dateTime.minute}:${dateTime.second}",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Text(
                    (dateTime.hour >= 12) ? "PM" : "AM",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
