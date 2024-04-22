// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';
//import 'package:travel_journal_mobile_app/lists.dart';

class CustomPacklistScreen extends StatefulWidget {
  @override
  _CustomPacklistScreenState createState() => _CustomPacklistScreenState();
}

class _CustomPacklistScreenState extends State<CustomPacklistScreen> {
  List<PackListItem> packListItems = [
    PackListItem(itemName: "Passport", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Visa", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Driver's license", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Travel insurance", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Boarding pass", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Itinerary", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Local currency", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Wallet", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Phone", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Charger", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Headphones", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Laptop", isChecked: false, selectedOption: "CarryOn"),
    PackListItem(itemName: "Sunglasses", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Shirts", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Shorts", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Pants", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Socks", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Underwear", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Shoes", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Jacket", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Swimwear", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Towel", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Pajamas", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Belt", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Raincoat", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Sandals", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Sneakers", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Sweater", isChecked: false, selectedOption: "Suitcase"),
    PackListItem(itemName: "Toothbrush/-paste", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Deodorant", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Shampoo", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Body wash", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Hairbrush", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Hair spray", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Makeup", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Makeup remover", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Sunscreen", isChecked: false, selectedOption: "Cosmetics"),
    PackListItem(itemName: "Medication", isChecked: false, selectedOption: "Cosmetics")
  ];

  TextEditingController _addItemController = TextEditingController();

  @override
  void dispose() {
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
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 126, 165, 96),
                  padding: EdgeInsets.all(5.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Text(
                          Names().packlistTitle,
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _showRenameDialog();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '${packListItems.where((item) => item.isChecked).length} / ${packListItems.length}',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          Expanded(
            child: packListItems.isEmpty
                ? Center(
                    child: Text(
                      "Press the '+' to add your first item",
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 126, 165, 96)),
                    ),
                  )
                : ListView.builder(
                    itemCount: packListItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: ImageCheckbox(
                          value: packListItems[index].isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              packListItems[index].isChecked = newValue!;
                            });
                          },
                          imagePath: "images/OnePieceFlag.png",
                        ),
                        title: Text('${packListItems[index].itemName} (${packListItems[index].selectedOption})'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                _showEditItemDialog(index);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _deleteItem(index);
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
      bottomNavigationBar: CustomBottomNavigationBar(2),
    );
  }

  void _showAddItemDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String? selectedOption;
        return StatefulBuilder(
          builder: (context, g) {
            return AlertDialog(
              title: Text('Add to Packlist'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _addItemController,
                    decoration: InputDecoration(
                      hintText: 'Enter your next item',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Select an option for sorting:'),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    value: selectedOption,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue;
                      });
                    },
                    items: <String>[
                      'Documents',
                      'CarryOn',
                      'Suitcase',
                      'Toiletries',
                      'Electronics',
                      'Miscellaneous'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
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
                      packListItems.add(PackListItem(
                        itemName: _addItemController.text,
                        isChecked: false,
                        selectedOption: selectedOption ?? 'no option selected',
                      ));
                      packListItems.sort((a, b) {
                        if (a.selectedOption != b.selectedOption) {
                          return a.selectedOption.compareTo(b.selectedOption);
                        } else {
                          return a.itemName.compareTo(b.itemName);
                        }
                      });
                      _addItemController.clear();
                    });
                    Navigator.pop(context);
                    setState((){});
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
      },
    );
  }

  void _showEditItemDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        String editedItemName = packListItems[index].itemName;
        String editedOption = packListItems[index].selectedOption;
        TextEditingController itemNameController =
        TextEditingController(text: editedItemName);

        return AlertDialog(
          title: Text('Edit Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: itemNameController,
                onChanged: (value) => editedItemName = value,
                decoration: InputDecoration(
                  hintText: 'Enter new item name',
                ),
              ),
              SizedBox(height: 20),
              Text('Select an option for sorting:'),
              SizedBox(height: 10),
              DropdownButton<String>(
                value: editedOption,
                onChanged: (String? newValue) {
                  setState(() {
                    editedOption = newValue!;
                  });
                },
                items: <String>[
                  'Documents',
                  'CarryOn',
                  'Suitcase',
                  'Toiletries',
                  'Electronics',
                  'Miscellaneous'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
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
                  packListItems[index].itemName = editedItemName;
                  packListItems[index].selectedOption = editedOption;
                  packListItems.sort((a, b) {
                    if (a.selectedOption != b.selectedOption) {
                      return a.selectedOption.compareTo(b.selectedOption);
                    } else {
                      return a.itemName.compareTo(b.itemName);
                    }
                  });
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

  void _deleteItem(int index) {
    setState(() {
      packListItems.removeAt(index);
    });
  }

  void _showRenameDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String newTitle = Names().packlistTitle;
        TextEditingController titleController = TextEditingController(text: newTitle);

        return AlertDialog(
          title: Text('Rename Packlist Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                onChanged: (value) => newTitle = value,
                decoration: InputDecoration(
                  hintText: 'Enter new title',
                ),
              ),
            ],
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
                  Names().packlistTitle = newTitle;
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
}

class PackListItem {
  String itemName;
  bool isChecked;
  String selectedOption;

  PackListItem({
    required this.itemName,
    required this.isChecked,
    required this.selectedOption,
  });
}
