import 'package:flutter/material.dart';
import 'package:nile_crm/model/my_model.dart';
import 'package:nile_crm/ui/enums.dart';
import 'package:nile_crm/ui/widgets/home_list_item.dart';

class Visits extends StatelessWidget {
  var visits = [
    MyModel(
        title: "د.جيهان جعفر",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "د.محمد صيام ",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "د.أشرف طنطاوي ",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "د.حاتم سلام ",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "د.جيهان جعفر",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "د.محمد صيام ",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "د.أشرف طنطاوي ",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020"),
    MyModel(
        title: "د.حاتم سلام ",
        subTitle: 'Territory:شرق اسكندرية',
        desc: "Due Date: 1-2-2020")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: visits.length,
      itemBuilder: (ctx, index) => HomeListItem(
        index: index,
        model: visits[index],
        type: ScreenType.Visits,
      ),
    );
  }
}
