import 'package:flutter/material.dart';
import 'package:nile_crm/model/my_model.dart';
import 'package:nile_crm/ui/widgets/home_list_item.dart';

import '../enums.dart';

class Messages extends StatelessWidget {
  var msgs = [
    MyModel(title: "Late", subTitle: 'Malak magdy', desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "Hello everyone",
        subTitle: 'Malak magdy',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "Sales management",
        subTitle: 'Muhammed alaraby',
        desc: "Due Date: 1-2-2020"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: msgs.length,
      itemBuilder: (ctx, index) => HomeListItem(
        index: index,
        model: msgs[index],
        type: ScreenType.Messages,
      ),
    );
  }
}
