// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';

class AddTripScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text('AddTrip Screen Placeholder'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(2),
    );
  }
}