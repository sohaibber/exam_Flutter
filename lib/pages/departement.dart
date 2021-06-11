import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DepartementsPage extends StatefulWidget {
  String nomDepartement;
  String codeDepartement;
  DepartementsPage({this.nomDepartement,this.codeDepartement});

  @override
  _DepartementsPageState createState() => _DepartementsPageState();
}

class _DepartementsPageState extends State<DepartementsPage> {
  dynamic dataRepositories;
  @override
  void initState() {
    super.initState();
    loadRepositories();
  }

  void loadRepositories() async {
    String url = "https://geo.api.gouv.fr/departements/05/communes";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        dataRepositories = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Départements Communes"),
      ),
      body: Center(
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text("${dataRepositories[index]['nom']}"),
              ),
              separatorBuilder: (context, index) =>
                  Divider(height: 2, color: Colors.black),
              itemCount:
              dataRepositories == null ? 0 : dataRepositories.length)),
    );
  }
}
