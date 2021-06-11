import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4D0BAQH5iNXGxXG6WA/company-logo_200_200/0/1555682987841?e=2159024400&v=beta&t=dMsW_hS9cgTbhaeHsBYX-udMEqKYXhU1xrVgyR5TGzg"),
            ),
          ],
        ));
  }
}