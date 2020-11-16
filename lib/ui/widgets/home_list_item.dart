import 'package:flutter/material.dart';
import 'package:nile_crm/model/my_model.dart';
import 'package:nile_crm/ui/enums.dart';
import 'package:nile_crm/ui/tasks_details.dart';
import 'package:nile_crm/ui/visit_details.dart';

import '../messages_details.dart';

class HomeListItem extends StatelessWidget {
  int index;
  MyModel model;
  ScreenType type;
  HomeListItem({this.index, this.model, this.type});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => (type == ScreenType.Messages)
                    ? MessageDetails()
                    : (type == ScreenType.Visits || type == ScreenType.Sync)
                        ? VisitDetails()
                        : TasksDetails())),
        leading: Icon(
          Icons.person_pin,
          size: 45,
        ),
        trailing: (index % 2 == 0)
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 30,
              )
            : Icon(
                Icons.arrow_forward,
                color: Colors.red[800],
                size: 30,
              ),
        title: Text(model.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(model.subTitle), Text(model.desc)],
        ),
      ),
    );
  }
}
