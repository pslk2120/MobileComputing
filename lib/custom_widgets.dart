// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/account.dart';
import 'package:travel_journal_mobile_app/main.dart';
import 'package:travel_journal_mobile_app/trips.dart';
import 'package:travel_journal_mobile_app/world.dart';
import 'package:travel_journal_mobile_app/checklists.dart';
import 'package:travel_journal_mobile_app/friends.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: GestureDetector(
        onTap: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())
          );
        },
        child: Text(
          'Travel Journal',
          style: TextStyle(
            fontFamily: 'WalterTurncoat',
            color: Colors.white,
          ),
        ),
      ),
      automaticallyImplyLeading: true,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.account_circle, color: Color.fromARGB(255, 126, 165, 96)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomBottomNavigationBar extends StatelessWidget {
        final int index;

        CustomBottomNavigationBar(this.index);

        @override
        Widget build(BuildContext context) {
          return BottomNavigationBar(
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            unselectedItemColor: Color.fromARGB(255, 126, 165, 96),
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.black,
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.public),
                backgroundColor: Colors.black,
                label: 'World',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplanemode_active),
                backgroundColor: Colors.black,
                label: 'Trips',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                backgroundColor: Colors.black,
                label: 'Checklists',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                backgroundColor: Colors.black,
                label: 'Friends',
              ),
            ],
            currentIndex: index,
            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  break;
                case 1:
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => WorldScreen()));
                  break;
                case 2:
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => TripsScreen()));
                  break;
                case 3:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CheckListsScreen()));
                  break;
                case 4:
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => FriendsScreen()));
                  break;
              }
            },
          );
        }
      }

class ImageCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String imagePath;

  ImageCheckbox({
    required this.value,
    this.onChanged,
    required this.imagePath,
  });

  @override
  _ImageCheckboxState createState() => _ImageCheckboxState();
}

class _ImageCheckboxState extends State<ImageCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged?.call(!widget.value);
      },
      child: Container(
        width: 26.0,
        height: 26.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: widget.value
            ? Image.asset(
                widget.imagePath,
                width: 24.0,
                height: 24.0,
                fit: BoxFit.cover,
              )
            : null,
      ),
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

class Names {
    String packlistTitle = 'Custom Packlist';
}

/* world map information
//import 'package:countries_world_map/countries_world_map.dart';
//import 'package:countries_world_map/data/maps/world_map.dart';
// Define a map to store the color of each country
  Map<String, Color> countryColors = {};
  // Method to update the color of a country
  void updateCountryColor(String country) {
    setState(() {
      countryColors[country] = Colors.black;
    });
  }
*/