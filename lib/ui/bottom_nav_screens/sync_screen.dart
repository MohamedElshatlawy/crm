import 'package:flutter/material.dart';
import 'package:nile_crm/ui/widgets/home_list_item.dart';

class Sync extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (ctx, index) => HomeListItem(
        index: index,
      ),
    );
  }
}
