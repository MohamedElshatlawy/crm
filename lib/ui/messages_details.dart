import 'package:flutter/material.dart';
import 'package:nile_crm/ui/colors.dart';
import 'package:nile_crm/ui/widgets/custom_textfield.dart';

class MessageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        backgroundColor: CustomColors.blueColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Late',
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
              title: Text('Malak Magdy'),
              subtitle: Text('19-10-2020'),
            ),
            Row(
              children: [
                Text('Okay'),
              ],
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            CustomTextField(''),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                color: CustomColors.blueColor,
                textColor: Colors.white,
                child: Text('Add Reply'),
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
