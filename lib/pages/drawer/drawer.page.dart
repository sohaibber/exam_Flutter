import 'package:contact_app_flutter/pages/drawer/drawer.header.dart';
import 'package:contact_app_flutter/pages/drawer/drawer.item.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          MyDrawerHeader(),
          DrawerItem("Departements","/departements"),
          Divider(color: Colors.black),
          DrawerItem("Infos","/infos"),
        ],
      ),
    );
  }
}