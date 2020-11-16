import 'package:flutter/material.dart';
import 'package:nile_crm/ui/colors.dart';
import 'package:nile_crm/ui/widgets/custom_textfield.dart';

class TasksDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task'),
        backgroundColor: CustomColors.blueColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Call',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.person_pin,
                size: 45,
              ),
              title: Text('Admin'),
              subtitle: Text('19-10-2020'),
            ),
            Text('Make a Call to doctor mansour and arrange a visit with him'),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Feedback',
                  style: TextStyle(color: CustomColors.blueColor, fontSize: 24),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField('No feedback is found'),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              child: RaisedButton(
                onPressed: () {},
                color: CustomColors.blueColor,
                textColor: Colors.white,
                child: Text('Done'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
