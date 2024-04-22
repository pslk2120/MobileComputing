// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_final_fields, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:travel_journal_mobile_app/custom_widgets.dart';
/*import 'package:travel_journal_mobile_app/main.dart';
import 'package:travel_journal_mobile_app/trips.dart';
import 'package:travel_journal_mobile_app/world.dart';
import 'package:travel_journal_mobile_app/us.dart';
import 'package:travel_journal_mobile_app/bucket_list.dart';
import 'package:travel_journal_mobile_app/friends.dart';*/

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text('Account Screen Placeholder'),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(0),
    );
  }
}