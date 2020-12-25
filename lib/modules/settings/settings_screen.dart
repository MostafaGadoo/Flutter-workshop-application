import 'package:courses/modules/search_screen/search_screen.dart';
import 'package:courses/shared/components/colors/colors.dart';
import 'package:courses/shared/components/compnents/components.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8.0,
          ),
          detailsText('Account settings'),
          SizedBox(
            height: 8.0,
          ),
          buildSettingsItem(
              function: (){},
              title: 'Account Security'
          ),
          buildSettingsItem(
              function: (){},
              title: 'Email notification'
          ),
          buildSettingsItem(
              function: (){},
              title: 'Push notifications'
          ),
          SizedBox(
            height: 25.0,
          ),
          detailsText('Support'),
          SizedBox(
            height: 8.0,
          ),
          buildSettingsItem(
              title: 'About US',
              function: (){}
              ),
          buildSettingsItem(
              title: 'Frequently asked questions ',
              function: (){}
          ),
          buildSettingsItem(
              title: 'Contact US',
              function: (){}
          ),
        ],

      ),
    );
  }
}
