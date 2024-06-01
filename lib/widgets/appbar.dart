import 'package:flutter/material.dart';
import 'package:new_project/contants/colors.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>

AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
          },
        ),
        title: Center(
          child: Text(
            'Centered Title',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon press
            },
          ),
          SizedBox(
              width:
                  8), // To ensure the title stays centered with equal padding on both sides
        ],
      );