// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, must_be_immutable, prefer_const_constructors_in_immutables, library_prefixes

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';
import 'package:travel_journal_mobile_app/europe.dart' as europe; 
import 'package:travel_journal_mobile_app/africa.dart' as africa;
import 'package:travel_journal_mobile_app/asia.dart' as asia;
import 'package:travel_journal_mobile_app/northAmerica.dart' as nAmerica;
import 'package:travel_journal_mobile_app/southAmerica.dart' as sAmerica;
import 'package:travel_journal_mobile_app/oceania.dart' as oceania;
import 'package:travel_journal_mobile_app/overseaTerritories.dart' as oversea;

//import 'package:countries_world_map/countries_world_map.dart';
//import 'package:countries_world_map/data/maps/world_map.dart';


class WorldScreen extends StatefulWidget {
  @override
  _WorldScreenState createState() => _WorldScreenState();
}

class _WorldScreenState extends State<WorldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/worldScreenPic.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Text(
                  'Continent Cruiser\n-\nEmbark on Your Global Adventure!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
          ),
          SizedBox(height: 5),
          ContinentButton(
            name: 'Africa',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => africa.AfricaScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Asia',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => asia.AsiaScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Europe',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => europe.EuropeScreen())
              );
            },
          ),
          ContinentButton(
            name: 'North America',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => nAmerica.NAmericaScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'South America',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sAmerica.SAmericaScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Oceania',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oceania.OceaniaScreen()),
              );
            },
          ),
          ContinentButton(
            name: 'Oversea Territories',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oversea.OverseaScreen()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(1),
    );
  }
}

class ContinentButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const ContinentButton({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(156, 126, 165, 96),
          foregroundColor: Colors.black,
        ),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            name,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
