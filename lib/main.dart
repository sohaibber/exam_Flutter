import 'package:contact_app_flutter/pages/departement.dart';
import 'package:contact_app_flutter/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/" : (context) => HomePage(),
        "/departements" : (context) => DepartementsPage(),
        // "/infos" : (context) => InfosPage()
      },
    );
  }
}
