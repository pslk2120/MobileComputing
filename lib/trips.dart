// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_final_fields, sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/packlists.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';
//import 'package:travel_journal_mobile_app/lists.dart';

class TripsScreen extends StatefulWidget {
  @override
  _TripsScreenState createState() => _TripsScreenState();
}

class Trip {
  final String name;
  final String time;
  final String countries;
  final String cities;
  final String? attractions;
  final String? restaurants;
  final String? transportation;
  final String? accommodation;
  final String? food;
  final String? weather;
  final String? friends;
  final String? notes;

  Trip({
    required this.name,
    required this.time,
    required this.countries,
    required this.cities,
    this.attractions,
    this.restaurants,
    this.transportation,
    this.accommodation,
    this.food,
    this.weather,
    this.friends,
    this.notes,
  });
}

class _TripsScreenState extends State<TripsScreen> {
  List<Trip> travelList = [];

  @override
  Widget build(BuildContext context) {
    travelList.sort((a, b) => a.name.compareTo(b.name));
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            height: 70, 
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    'Trips',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () async {
                      // Implement onPressed to show the popup menu
                      var selectedValue = await showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(100, 100, 0, 0),
                        surfaceTintColor: Color.fromARGB(200, 255, 255, 255),
                        color: Color.fromARGB(200, 255, 255, 255),
                        items: <PopupMenuEntry>[
                          /*PopupMenuItem(
                            child: Text('National'),
                            value: 'National',
                          ),
                          PopupMenuItem(
                            child: Text('International'),
                            value: 'International',
                          ),*/
                          PopupMenuItem(
                            child: Text(Names().packlistTitle),
                            value: 1,
                          ),
                        ],
                        elevation: 8.0,
                      );

                      // Check the selected value and navigate to the corresponding screen
                      if (selectedValue != null) {
                        switch (selectedValue) {
                          /*case 'National':
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NationalPacklistScreen()),
                            );
                            break;
                          case 'International':
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => InternationalPacklistScreen()),
                            );
                            break;*/
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CustomPacklistScreen()),
                            );
                            break;
                        }
                      }
                    },
                    child: Text(
                      'Packlist',
                      style: TextStyle(
                        color: Color.fromARGB(255, 126, 165, 96),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10), // Add some space
          Expanded(
            child: travelList.isEmpty
              ? Center(
                  child: Text(
                    "Press '+' to add your first Trip",
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 126, 165, 96)),
                  ),
                )
              : ListView.builder(
                  itemCount: travelList.length,
                  itemBuilder: (context, index) {
                    Trip trip = travelList[index];
                    return Card(
                      child: ExpansionTile(
                        tilePadding: EdgeInsets.symmetric(horizontal: 15.0),
                        iconColor: Colors.black, 
                        collapsedIconColor: Colors.black,
                        backgroundColor: Color.fromARGB(30, 126, 165, 96),
                        collapsedBackgroundColor: Color.fromARGB(30, 126, 165, 96),
                        title: Text(
                          trip.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        children: [
                          ListTile(
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Time: ${trip.time}'),
                                Text('Countries: ${trip.countries}'),
                                Text('Cities: ${trip.cities}'),
                                if (trip.attractions != null) Text('Attractions: ${trip.attractions}'),
                                if (trip.restaurants != null) Text('Restaurants: ${trip.restaurants}'),
                                if (trip.transportation != null) Text('Transportation: ${trip.transportation}'),
                                if (trip.accommodation != null) Text('Accommodation: ${trip.accommodation}'),
                                if (trip.food != null) Text('Food: ${trip.food}'),
                                if (trip.weather != null) Text('Weather: ${trip.weather}'),
                                if (trip.friends != null) Text('Friends: ${trip.friends}'),
                                if (trip.notes != null) Text('Notes: ${trip.notes}'),
                              ],
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  color: Colors.black,
                                  onPressed: () => _editTrip(index),
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  color: Colors.black,
                                  onPressed: () => _deleteTrip(index),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTripDialog,
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Color.fromARGB(255, 126, 165, 96)),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(2),
    );
  }

  void _showAddTripDialog() {
    TextEditingController nameController = TextEditingController();
    TextEditingController timeController = TextEditingController();
    TextEditingController countriesController = TextEditingController();
    TextEditingController citiesController = TextEditingController();
    TextEditingController attractionsController = TextEditingController();
    TextEditingController restaurantsController = TextEditingController();
    TextEditingController transportationController = TextEditingController();
    TextEditingController accommodationController = TextEditingController();
    TextEditingController foodController = TextEditingController();
    TextEditingController weatherController = TextEditingController();
    TextEditingController friendsController = TextEditingController();
    TextEditingController notesController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Add a Trip',
            style: TextStyle(color: Colors.black),
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name the trip',
                    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: timeController,
                  decoration: InputDecoration(
                    labelText: 'When did you go?',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: countriesController,
                  decoration: InputDecoration(
                    labelText: 'Countries visited',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: citiesController,
                  decoration: InputDecoration(
                    labelText: 'Cities visited',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: attractionsController,
                  decoration: InputDecoration(
                    labelText: 'Favorite attractions',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: restaurantsController,
                  decoration: InputDecoration(
                    labelText: 'Favorite restaurants',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: transportationController,
                  decoration: InputDecoration(
                    labelText: 'Type of transportation',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: accommodationController,
                  decoration: InputDecoration(
                    labelText: 'Type of accommodation',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: foodController,
                  decoration: InputDecoration(
                    labelText: 'Favorite food',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: weatherController,
                  decoration: InputDecoration(
                    labelText: 'Weather comments',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: friendsController,
                  decoration: InputDecoration(
                    labelText: 'Travel buddies',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                TextField(
                  controller: notesController,
                  decoration: InputDecoration(
                    labelText: 'Any other notes?',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Cancel',
                style: TextStyle(color: Color.fromARGB(255, 234, 27, 27)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  travelList.add(
                    Trip(
                      name: nameController.text,
                      time: timeController.text,
                      countries: countriesController.text,
                      cities: citiesController.text,
                      attractions: attractionsController.text.isNotEmpty ? attractionsController.text : null,
                      restaurants: restaurantsController.text.isNotEmpty ? restaurantsController.text : null,
                      transportation: transportationController.text.isNotEmpty ? transportationController.text : null,
                      accommodation: accommodationController.text.isNotEmpty ? accommodationController.text : null,
                      food: foodController.text.isNotEmpty ? foodController.text : null,
                      weather: weatherController.text.isNotEmpty ? weatherController.text : null,
                      friends: friendsController.text.isNotEmpty ? friendsController.text : null,
                      notes: notesController.text.isNotEmpty ? notesController.text : null,
                    ),
                  );
                  nameController.clear();
                  timeController.clear();
                  countriesController.clear();
                  citiesController.clear();
                  attractionsController.clear();
                  restaurantsController.clear();
                  transportationController.clear();
                  accommodationController.clear();
                  foodController.clear();
                  weatherController.clear();
                  friendsController.clear();
                  notesController.clear();
                });
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Add',
                style: TextStyle(color: Color.fromARGB(255, 126, 165, 96)),
              ),
            ),
          ],
        );
      },
    );
  }

  void _editTrip(int index) {
    Trip trip = travelList[index];
    TextEditingController nameController = TextEditingController(text: trip.name);
    TextEditingController timeController = TextEditingController(text: trip.time);
    TextEditingController countriesController = TextEditingController(text: trip.countries);
    TextEditingController citiesController = TextEditingController(text: trip.cities);
    TextEditingController attractionsController = TextEditingController(text: trip.attractions ?? '');
    TextEditingController restaurantsController = TextEditingController(text: trip.restaurants ?? '');
    TextEditingController transportationController = TextEditingController(text: trip.transportation ?? '');
    TextEditingController accommodationController = TextEditingController(text: trip.accommodation ?? '');
    TextEditingController foodController = TextEditingController(text: trip.food ?? '');
    TextEditingController weatherController = TextEditingController(text: trip.weather ?? '');
    TextEditingController friendsController = TextEditingController(text: trip.friends ?? '');
    TextEditingController notesController = TextEditingController(text: trip.notes ?? '');

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Trip'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name the trip',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),
                ),
                TextField(
                  controller: timeController,
                  decoration: InputDecoration(
                    labelText: 'When did you go?',
                  ),
                ),
                TextField(
                  controller: countriesController,
                  decoration: InputDecoration(
                    labelText: 'Countries visited',
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: citiesController,
                  decoration: InputDecoration(
                    labelText: 'Cities visited',
                  ),
                ),
                TextField(
                  controller: attractionsController,
                  decoration: InputDecoration(
                    labelText: 'Favorite attractions',
                  ),
                ),
                TextField(
                  controller: restaurantsController,
                  decoration: InputDecoration(
                    labelText: 'Favorite restaurants',
                  ),
                ),
                TextField(
                  controller: transportationController,
                  decoration: InputDecoration(
                    labelText: 'Type of transportation',
                  ),
                ),
                TextField(
                  controller: accommodationController,
                  decoration: InputDecoration(
                    labelText: 'Type of accommodation',
                  ),
                ),
                TextField(
                  controller: foodController,
                  decoration: InputDecoration(
                    labelText: 'Favorite food',
                  ),
                ),
                TextField(
                  controller: weatherController,
                  decoration: InputDecoration(
                    labelText: 'Weather comments',
                  ),
                ),
                TextField(
                  controller: friendsController,
                  decoration: InputDecoration(
                    labelText: 'Travel buddies',
                  ),
                ),
                TextField(
                  controller: notesController,
                  decoration: InputDecoration(
                    labelText: 'Any other notes?',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Cancel',
                style: TextStyle(color: Color.fromARGB(255, 234, 27, 27)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  travelList[index] = Trip(
                    name: nameController.text,
                    time: timeController.text,
                    countries: countriesController.text,
                    cities: citiesController.text,
                    attractions: attractionsController.text.isNotEmpty ? attractionsController.text : null,
                    restaurants: restaurantsController.text.isNotEmpty ? restaurantsController.text : null,
                    transportation: transportationController.text.isNotEmpty ? transportationController.text : null,
                    accommodation: accommodationController.text.isNotEmpty ? accommodationController.text : null,
                    food: foodController.text.isNotEmpty ? foodController.text : null,
                    weather: weatherController.text.isNotEmpty ? weatherController.text : null,
                    friends: friendsController.text.isNotEmpty ? friendsController.text : null,
                    notes: notesController.text.isNotEmpty ? notesController.text : null,
                  );
                });
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Save',
                style: TextStyle(color: Color.fromARGB(255, 126, 165, 96)),
              ),
            ),
          ],
        );
      },
    );
  }

  void _deleteTrip(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Deletion'),
          content: Text('Are you sure you want to delete this trip?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Cancel',
                style: TextStyle(color: Color.fromARGB(255, 234, 27, 27)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  travelList.removeAt(index);
                });
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Delete',
                style: TextStyle(color: Color.fromARGB(255, 126, 165, 96)),
              ),
            ),
          ],
        );
      },
    );
  }
}
