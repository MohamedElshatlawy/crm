import 'package:flutter/material.dart';
import 'package:nile_crm/model/my_model.dart';
import 'package:nile_crm/ui/widgets/home_list_item.dart';

import '../enums.dart';

class Tasks extends StatelessWidget {
  var tasks = [
    MyModel(title: "Call", subTitle: 'Admin', desc: "Due Date: 1-2-2020"),
    MyModel(title: "Meeting", subTitle: 'Admin', desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "Make a visit", subTitle: 'Admin', desc: "Due Date: 1-2-2020"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (ctx, index) => HomeListItem(
        index: index,
        model: tasks[index],
        type: ScreenType.Tasks,
      ),
    );
  }
}
