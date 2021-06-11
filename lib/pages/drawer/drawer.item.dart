import 'package:flutter/material.dart';
class DrawerItem  extends StatelessWidget {
  String itemTitle;
  String route;
  DrawerItem(this.itemTitle,this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Icon(anyIcon),    Icon in the left side of the row
        title: Text(itemTitle,style: TextStyle(fontSize: 16)),
        trailing:Icon(Icons.arrow_right),
        onTap: (){ Navigator.pushNamed(context,route); }
    );
  }
}