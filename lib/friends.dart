// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/main.dart';
import 'package:travel_journal_mobile_app/trips.dart';
import 'package:travel_journal_mobile_app/world.dart';
import 'package:travel_journal_mobile_app/checklists.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';

class FriendsScreen extends StatefulWidget {
  @override
  _FriendsScreenState createState() => _FriendsScreenState();
}

class Friend {
  final String name;
  final String meetingTime;
  final int tripsTogether;
  final String origin;
  final String? pictureUrl;

  Friend({
    required this.name,
    required this.meetingTime,
    required this.tripsTogether,
    required this.origin,
    this.pictureUrl,
  });
}

class _FriendsScreenState extends State<FriendsScreen> {
  List<Friend> friendsList = [];

  @override
  Widget build(BuildContext context) {
    // Sort the friends list alphabetically by name
    friendsList.sort((a, b) => a.name.compareTo(b.name));
    return Scaffold(
      appBar: CustomAppBar(),
      body: friendsList.isEmpty
          ? Center(
              child: Text(
                "Press the '+' to add a friend",
                style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 126, 165, 96)),
              ),
            )
          : ListView.builder(
        itemCount: friendsList.length,
        itemBuilder: (context, index) {
          Friend friend = friendsList[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 126, 165, 96),
              backgroundImage: friend.pictureUrl != null
                  ? AssetImage(friend.pictureUrl!)
                  : null,
              child: friend.pictureUrl == null ? Text(friend.name[0]) : null,
            ),
            title: Text(
              friend.name,
              style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('When we met: ${friend.meetingTime}'),
                Text('# of Trips together: ${friend.tripsTogether}'),
                Text('Origin: ${friend.origin}'),
              ],
            ),
            onTap: () {
              // Handle friend tap
              // For example, navigate to friend details screen
            },
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Method to show edit dialog
                    TextEditingController nameController = TextEditingController(text: friend.name);
                    TextEditingController meetingTimeController = TextEditingController(text: friend.meetingTime);
                    TextEditingController tripsTogetherController = TextEditingController(text: friend.tripsTogether.toString());
                    TextEditingController originController = TextEditingController(text: friend.origin);
                    TextEditingController pictureUrlController = TextEditingController(text: friend.pictureUrl ?? '');

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Edit Friend'),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                  ),
                                ),
                                TextField(
                                  controller: meetingTimeController,
                                  decoration: InputDecoration(
                                    labelText: 'When we met',
                                  ),
                                ),
                                TextField(
                                  controller: tripsTogetherController,
                                  decoration: InputDecoration(
                                    labelText: '# of Trips Together',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                                TextField(
                                  controller: originController,
                                  decoration: InputDecoration(
                                    labelText: 'Origin',
                                  ),
                                ),
                                TextField(
                                  controller: pictureUrlController,
                                  decoration: InputDecoration(
                                    labelText: 'Picture URL (optional)',
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
                                  friendsList[index] = Friend(
                                    name: nameController.text,
                                    meetingTime: meetingTimeController.text,
                                    tripsTogether: int.tryParse(tripsTogetherController.text) ?? 0,
                                    origin: originController.text,
                                    pictureUrl: pictureUrlController.text.isNotEmpty ? pictureUrlController.text : null,
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
                          content: Text('Are you sure you want to delete this friend?'),
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
                                  friendsList.removeAt(index);
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
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddFriendDialog,
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Color.fromARGB(255, 126, 165, 96)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        unselectedItemColor: Color.fromARGB(255, 126, 165, 96),
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'World',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Checklists',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            backgroundColor: Colors.black,
            label: 'Friends',
          ),
        ],
        currentIndex: 4,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WorldScreen()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TripsScreen()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CheckListsScreen()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FriendsScreen()));
              break;
          }
        },
      ),
    );
  }

  void _showAddFriendDialog() {
    TextEditingController nameController = TextEditingController();
    TextEditingController meetingTimeController = TextEditingController();
    TextEditingController tripsTogetherController = TextEditingController();
    TextEditingController originController = TextEditingController();
    TextEditingController pictureUrlController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add a Friend'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),
                ),
                TextField(
                  controller: meetingTimeController,
                  decoration: InputDecoration(
                    labelText: 'Where we first met',
                  ),
                ),
                TextField(
                  controller: tripsTogetherController,
                  decoration: InputDecoration(
                    labelText: '# of Trips Together',
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: originController,
                  decoration: InputDecoration(
                    labelText: 'Origin',
                  ),
                ),
                TextField(
                  controller: pictureUrlController,
                  decoration: InputDecoration(
                    labelText: 'Picture URL (optional)',
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
                  friendsList.add(
                    Friend(
                      name: nameController.text,
                      meetingTime: meetingTimeController.text,
                      tripsTogether: int.tryParse(tripsTogetherController.text) ?? 0,
                      origin: originController.text,
                      pictureUrl: pictureUrlController.text.isNotEmpty ? pictureUrlController.text : null,
                    ),
                  );
                  // Clear text controllers
                  nameController.clear();
                  meetingTimeController.clear();
                  tripsTogetherController.clear();
                  originController.clear();
                  pictureUrlController.clear();
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
}
