import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[800],
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
            ),
            ListTile(
              leading: Icon(
                Icons.location_city,
                color: Colors.white,
              ),
              title: Text(
                'Visits',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notes,
                color: Colors.white,
              ),
              title: Text(
                'Task',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.white,
              ),
              title: Text(
                'Messages',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.location_history_sharp,
                color: Colors.white,
              ),
              title: Text(
                'Location',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.note,
                color: Colors.white,
              ),
              title: Text(
                'Contacts',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.card_travel,
                color: Colors.white,
              ),
              title: Text(
                'Vacations',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
