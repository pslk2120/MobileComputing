// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, must_be_immutable, prefer_const_constructors_in_immutables, library_prefixes

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart' as customWidgets;
import 'package:travel_journal_mobile_app/lists_AroundTheWorld.dart';
import 'package:travel_journal_mobile_app/world.dart';

class CheckListsScreen extends StatefulWidget {
  @override
  _CheckListsScreenState createState() => _CheckListsScreenState();
}

class _CheckListsScreenState extends State<CheckListsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customWidgets.CustomAppBar(),
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/checklistScreenPic.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Text(
                  'The World challenge\n-\nHow many can you check off?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
          ),
          SizedBox(height: 5),
          ContinentButton(
            name: 'Custom Bucketlist',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BucketListScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Festivals around the World',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FestivalsScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'National Specialties',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Flight Challenge',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FlightScreen())
              );
            },
          ),
          ContinentButton(
            name: 'Car Trip',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Hotels',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HotelsScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Travel',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TravelScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'World Wonders',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorldWondersScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Beach',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BeachScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Airports',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AirportsScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Mountains to climb',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MountainsScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'A world a Records',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecordScreen()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: customWidgets.CustomBottomNavigationBar(3),
    );
  }
}

