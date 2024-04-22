// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, must_be_immutable, prefer_const_constructors_in_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';
import 'package:travel_journal_mobile_app/lists.dart';

class EuropeScreen extends StatefulWidget {
  @override
  _EuropeScreenState createState() => _EuropeScreenState();
}

class _EuropeScreenState extends State<EuropeScreen> {
  List<bool> _isCheckedCountryList = List.filled(Lists().europe.length, false); // For overall countries
  Map<int, Map<String, List<bool>>> _isCheckedDetailMap = {}; // For details of each country
  List<bool> _isExpandedList = List.filled(Lists().europe.length, false); // For expansion state of each country
  List<bool> _isCountryFullyCheckedList = List.filled(Lists().europe.length, false);

  @override
  Widget build(BuildContext context) {
    int checkedCountries = _isCheckedCountryList.where((isChecked) => isChecked).length;
    int totalCountries = Lists().europe.length;

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
                    'Europe',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    '$checkedCountries / $totalCountries',
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
              itemCount: Lists().europe.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      color: _isCountryFullyCheckedList[index] ? Colors.green.withOpacity(0.3) : Colors.transparent,
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            _isExpandedList[index] = !_isExpandedList[index];
                          });
                        },
                        title: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isExpandedList[index] = !_isExpandedList[index];
                            });
                          },
                          child: Text(
                            Lists().europe[index].name,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        leading: ImageCheckbox(
                          value: _isCheckedCountryList[index],
                          onChanged: (bool newValue) {
                            setState(() {
                              _isCheckedCountryList[index] = newValue;
                              _updateChecklists(index);
                            });
                          },
                          imagePath: Lists().europe[index].flag,
                        ),
                        trailing: Icon(
                          _isExpandedList[index] ? Icons.expand_less : Icons.expand_more,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    if (_isExpandedList[index])
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (Lists().europe[index].capitol.isEmpty)
                              _buildChecklistEmpty('Capitol')
                              else
                                _buildChecklist('Capitol',Lists().europe[index].capitol,index,'Capitol'),
                          
                            if (Lists().europe[index].states.isEmpty)
                              _buildChecklistEmpty('States/Provinces')
                              else
                                _buildChecklist('States/Provinces',Lists().europe[index].states.join(', '),index,'States/Provinces'),

                            if (Lists().europe[index].capitals.isEmpty)
                                _buildChecklistEmpty('State Capitals')
                              else
                                _buildChecklist('State Capitals',Lists().europe[index].capitals.join(', '),index,'State Capitals'),

                            if (Lists().europe[index].cities.isEmpty)
                              _buildChecklistEmpty('Cities')
                              else
                                _buildChecklist('Cities',Lists().europe[index].cities.join(', '),index,'Cities'),
                            
                            if (Lists().europe[index].mustSee.isEmpty)
                              _buildChecklistEmpty('Must-See')
                              else
                                _buildChecklist('Must-See',Lists().europe[index].mustSee.join(', '),index,'Must-See'),
                                                                                        
                            if (Lists().europe[index].nationalParks.isEmpty)
                                _buildChecklistEmpty('National Parks')
                                else
                                  _buildChecklist('National Parks',Lists().europe[index].nationalParks.join(', '),index,'National Parks'),
                              
                            if (Lists().europe[index].islands.isEmpty)
                                _buildChecklistEmpty('Islands/Peninsulas')
                                else
                                  _buildChecklist('Islands/Peninsulas',Lists().europe[index].islands.join(', '),index,'Islands/Peninsulas'),
                              
                            if (Lists().europe[index].foodAndDrinks.isEmpty)
                                _buildChecklistEmpty('Food and Drinks')
                                else
                                  _buildChecklist('Food and Drinks',Lists().europe[index].foodAndDrinks.join(', '),index,'Food and Drinks'),
                          ],
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(1),
    );
  }


  Widget _buildChecklistEmpty(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: SizedBox.shrink(),
        )
      ]
    );
  }

  Widget _buildChecklist(String title, String items, int countryIndex, String type) {
    List<String> itemList = items.split(', ');
    final int itemCount = itemList.length;
    final int halfItemCount = (itemCount / 2).ceil();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
          iconColor: Colors.black, collapsedIconColor: Colors.black,
          title: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8), // Add spacing between the title and the subtitle
              Text(
                '${_getCheckedItemsCount(countryIndex, type)} / $itemCount',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          children: [
            if (itemList.isNotEmpty)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: itemList.sublist(0, halfItemCount).map((item) {
                        return ListTile(
                          title: Text(
                            item,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          leading: ImageCheckbox(
                            value: _isCheckedDetailMap.containsKey(countryIndex) &&
                                _isCheckedDetailMap[countryIndex]!.containsKey(type) &&
                                _isCheckedDetailMap[countryIndex]![type]!.elementAt(itemList.indexOf(item)),
                            onChanged: (bool newValue) {
                              setState(() {
                                _isCheckedDetailMap.putIfAbsent(
                                  countryIndex,
                                  () => {type: List.filled(itemList.length, false)},
                                );
                                _isCheckedDetailMap[countryIndex]!.putIfAbsent(
                                  type,
                                  () => List.filled(itemList.length, false),
                                );
                                _isCheckedDetailMap[countryIndex]![type]![itemList.indexOf(item)] = newValue;
                              });
                            },
                            imagePath: Lists().europe[countryIndex].flag, // Use the flag path from the list
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  if (halfItemCount < itemCount) // Display second column only if there are more items
                    SizedBox(width: 16), // Add spacing between columns
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: itemList.sublist(halfItemCount).map((item) {
                          return ListTile(
                            title: Text(
                              item,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            leading: ImageCheckbox(
                              value: _isCheckedDetailMap.containsKey(countryIndex) &&
                                  _isCheckedDetailMap[countryIndex]!.containsKey(type) &&
                                  _isCheckedDetailMap[countryIndex]![type]!.elementAt(itemList.indexOf(item)),
                              onChanged: (bool newValue) {
                                setState(() {
                                  _isCheckedDetailMap.putIfAbsent(
                                    countryIndex,
                                    () => {type: List.filled(itemList.length, false)},
                                  );
                                  _isCheckedDetailMap[countryIndex]!.putIfAbsent(
                                    type,
                                    () => List.filled(itemList.length, false),
                                  );
                                  _isCheckedDetailMap[countryIndex]![type]![itemList.indexOf(item)] = newValue;
                                });
                              },
                              imagePath: Lists().europe[countryIndex].flag, // Use the flag path from the list
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ],
    );
  }

  int _getCheckedItemsCount(int countryIndex, String type) {
    if (_isCheckedDetailMap.containsKey(countryIndex) &&
        _isCheckedDetailMap[countryIndex]!.containsKey(type)) {
      return _isCheckedDetailMap[countryIndex]![type]!
          .where((isChecked) => isChecked)
          .length;
    } else {
      return 0;
    }
  }

  void _updateChecklists(int index) {
    setState(() {
      if (_isExpandedList[index]) {
        final countryDetails = Lists().europe[index];
        final nonEmptyDetails = {
          'Capitol': [countryDetails.capitol],
          'States/Provinces': countryDetails.states,
          'State Capitals': countryDetails.capitals,
          'Cities': countryDetails.cities,
          'Must-See': countryDetails.mustSee,
          'National Parks': countryDetails.nationalParks,
          'Islands/Peninsulas': countryDetails.islands,
          'Food and Drinks': countryDetails.foodAndDrinks,
        };

        _isCheckedDetailMap.putIfAbsent(
          index,
          () => {
            for (var entry in nonEmptyDetails.entries)
              entry.key: List.filled(entry.value.length, _isCheckedCountryList[index])
          },
        );

        _isCountryFullyCheckedList[index] = _areAllChecklistsChecked(index);
      } else {
        _isCountryFullyCheckedList[index] = false;
      }
    });
  }

  bool _areAllChecklistsChecked(int countryIndex) {
    if (_isExpandedList[countryIndex]) {
      final countryDetails = Lists().europe[countryIndex];
      final nonEmptyDetails = {
        'Capitol': [countryDetails.capitol], // Include 'Capitol' string
        'States/Provinces': countryDetails.states,
        'State Capitals': countryDetails.capitals,
        'Cities': countryDetails.cities,
        'Must-See': countryDetails.mustSee,
        'National Parks': countryDetails.nationalParks,
        'Islands/Peninsulas': countryDetails.islands,
        'Food and Drinks': countryDetails.foodAndDrinks,
      };

      // Check if the country itself is checked
      if (!_isCheckedCountryList[countryIndex]) {
        return false;
      }

      for (var entry in nonEmptyDetails.entries) {
        final type = entry.key;
        final items = entry.value;

        if (items.isNotEmpty) {
          if (_isCheckedDetailMap.containsKey(countryIndex) &&
              _isCheckedDetailMap[countryIndex]!.containsKey(type)) {
            final checkedItems = _isCheckedDetailMap[countryIndex]![type]!;
            if (checkedItems.length != items.length) {
              return false; // Not all items in this detail list are checked
            }
            if (checkedItems.any((isChecked) => !isChecked)) {
              return false; // At least one detail item is not checked
            }
          } else {
            return false; // No checked items found for this detail list
          }
        }
      }
      return true; // All detail items are checked for non-empty detail lists
    }
    return false; // Not all detail items are expanded
  }
}


