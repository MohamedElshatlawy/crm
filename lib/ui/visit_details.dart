import 'package:flutter/material.dart';
import 'package:nile_crm/ui/colors.dart';
import 'package:nile_crm/ui/widgets/custom_textfield.dart';

class VisitDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.blueColor,
        title: Text('د. جيهان جعفر'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(
                Icons.person_pin,
                size: 45,
              ),
              title: Text('د جيهان جعفر'),
              subtitle: Text('AM Center'),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brick:',
                      ),
                      Text('٤٥ شارع سيدي بشر',
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Started At:',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text('2020-10-09', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Territory:',
                      ),
                      Text('شرق اسكندرية',
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ended At:',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text('2020-10-09', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
            CustomTextField('No feedback is found')
          ],
        ),
      ),
    );
  }
}
