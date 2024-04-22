// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, must_be_immutable, prefer_const_constructors_in_immutables, prefer_final_fields, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';
import 'package:travel_journal_mobile_app/lists.dart';

//more ideas look at checklists.dart

class FestivalsScreen extends StatefulWidget {
  @override
  _FestivalsScreenState createState() => _FestivalsScreenState();
}

class _FestivalsScreenState extends State<FestivalsScreen> {
  List<bool> _isCheckedList = List.filled(Lists().festivalsAroundTheWorld.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Festivals around the World',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().festivalsAroundTheWorld.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().festivalsAroundTheWorld.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().festivalsAroundTheWorld[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List<bool> _isCheckedList = List.filled(Lists().food.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'National Specialties',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().food.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().food.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().food[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class FlightScreen extends StatefulWidget {
  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  List<bool> _isCheckedList = List.filled(Lists().flight.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Flight Challenge',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().flight.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().flight.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().flight[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class CarScreen extends StatefulWidget {
  @override
  _CarScreenState createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  List<bool> _isCheckedList = List.filled(Lists().carTrip.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Car Trip',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().carTrip.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().carTrip.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().carTrip[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class HotelsScreen extends StatefulWidget {
  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  List<bool> _isCheckedList = List.filled(Lists().hotels.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Hotels',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().hotels.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().hotels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().hotels[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class TravelScreen extends StatefulWidget {
  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  List<bool> _isCheckedList = List.filled(Lists().travel.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Travel Challenge',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().travel.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().travel.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().travel[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class WorldWondersScreen extends StatefulWidget {
  @override
  _WorldWondersScreenState createState() => _WorldWondersScreenState();
}

class _WorldWondersScreenState extends State<WorldWondersScreen> {
  List<bool> _isCheckedList = List.filled(Lists().worldWonders.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'World Wonders',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().worldWonders.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().worldWonders.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().worldWonders[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class AirportsScreen extends StatefulWidget {
  @override
  _AirportsScreenState createState() => _AirportsScreenState();
}

class _AirportsScreenState extends State<AirportsScreen> {
  List<bool> _isCheckedList = List.filled(Lists().airports.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Airports',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().airports.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().airports.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().airports[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class BeachScreen extends StatefulWidget {
  @override
  _BeachScreenState createState() => _BeachScreenState();
}

class _BeachScreenState extends State<BeachScreen> {
  List<bool> _isCheckedList = List.filled(Lists().beach.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Beach Challenge',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().beach.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().beach.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().beach[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    // Provide the image path if needed
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class MountainsScreen extends StatefulWidget {
  @override
  _MountainsScreenState createState() => _MountainsScreenState();
}

class _MountainsScreenState extends State<MountainsScreen> {
  List<bool> _isCheckedList = List.filled(Lists().mountains.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Climbing Mountains Challenge',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().mountains.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().mountains.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().mountains[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}


class RecordScreen extends StatefulWidget {
  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  List<bool> _isCheckedList = List.filled(Lists().worldRecords.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Geographical World Records',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${_isCheckedList.where((isChecked) => isChecked).length} / ${Lists().worldRecords.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Lists().worldRecords.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      _isCheckedList[index] = !_isCheckedList[index];
                    });
                  },
                  title: Text(
                    Lists().worldRecords[index],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  leading: ImageCheckbox(
                    value: _isCheckedList[index],
                    onChanged: (bool newValue) {
                      setState(() {
                        _isCheckedList[index] = newValue;
                      });
                    },
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  
                );
              },
            ),
          ),
        ],
      ),      
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }
}



class BucketListScreen extends StatefulWidget {
  @override
  _BucketListScreenState createState() => _BucketListScreenState();
}

class _BucketListScreenState extends State<BucketListScreen> {
  List<String> bucketListItems = []; // List to store bucket list items
  List<bool?> isChecked = []; // List to track if an item is checked
  TextEditingController _addItemController = TextEditingController(); // Controller for the text field to add new items

  @override
  void dispose() { // Clean up the controller when the widget is disposed
    _addItemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 126, 165, 96),
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Bucket List',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    '${isChecked.where((isChecked) => isChecked ?? false).length} / ${bucketListItems.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: bucketListItems.isEmpty
              ? Center(
                  child: Text(
                    "Press the '+' to add your first goal",
                    style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 126, 165, 96)),
                  ),
                )
              : ListView.builder(
              itemCount: bucketListItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ImageCheckbox(
                    value: isChecked[index] ?? false,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked[index] = newValue;
                      });
                    },
                    imagePath: "images/OnePieceFlag.png",
                  ),
                  title: Text(bucketListItems[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          // Show dialog to edit item
                          showDialog(
                            context: context,
                            builder: (context) {
                              String editedItem = bucketListItems[index];
                              TextEditingController controller = TextEditingController(text: editedItem);

                              return AlertDialog(
                                title: Text('Edit Item'),
                                content: TextField(
                                  controller: controller,
                                  onChanged: (value) => editedItem = value,
                                  decoration: InputDecoration(
                                    hintText: 'Enter new item name',
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
                                    child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 234, 27, 27)),),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Update the item in the list and close the dialog
                                      setState(() {
                                        bucketListItems[index] = editedItem;
                                      });
                                      Navigator.pop(context);
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Text('Save', style: TextStyle(color: Color.fromARGB(255, 126, 165, 96)),),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Confirm Deletion'),
                                content: Text('Are you sure you want to delete this item?'),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 234, 27, 27)),),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        bucketListItems.removeAt(index);
                                        isChecked.removeAt(index); // Remove corresponding checked status
                                      });
                                      Navigator.pop(context);
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Text('Delete', style: TextStyle(color: Color.fromARGB(255, 126, 165, 96)),),
                                  ),
                                ],
                              );
                            },
                          );
                        },
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
        onPressed: _showAddItemDialog,
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Color.fromARGB(255, 126, 165, 96)),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(3),
    );
  }

  void _showAddItemDialog() { // Method to show dialog for adding new item
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add to Bucket List'),
          content: TextField(
            controller: _addItemController,
            decoration: InputDecoration(
              hintText: 'Enter your next goal',
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
              child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 234, 27, 27)),),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  bucketListItems.add(_addItemController.text);
                  isChecked.add(false); // Add corresponding checked status
                  _addItemController.clear();
                });
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text('Add', style: TextStyle(color: Color.fromARGB(255, 126, 165, 96)),),
            ),
          ],
        );
      },
    );
  }
}

