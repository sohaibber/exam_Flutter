import 'package:contact_app_flutter/pages/drawer/drawer.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(title: Text('Home'),backgroundColor: Colors.blueAccent),
      body: Center(
          child: Text('Home page',style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )),
    );
  }}
