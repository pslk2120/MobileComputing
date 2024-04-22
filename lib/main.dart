// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, unused_import
//to do:
  //add map first in listview
  //currency converter, weather and climate API, firebase, account...

import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';


import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Journal App',
      theme: ThemeData(
        fontFamily: 'Vollkorn',
        primaryColor: Colors.black,
        colorScheme: ThemeData().colorScheme.copyWith(secondary: Colors.black),
        highlightColor: Color.fromARGB(255, 126, 165, 96),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
        dividerTheme: DividerThemeData(color: Colors.black),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(image: AssetImage('images/mainScreenPic.jpeg'),
            fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(102, 242, 220, 220),
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: Text(
                "Are you ready\nto explore\nthe world?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.0,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(0),
    );
  }
}
