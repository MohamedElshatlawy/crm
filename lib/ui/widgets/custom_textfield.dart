import 'package:flutter/material.dart';
import 'package:nile_crm/ui/colors.dart';

class CustomTextField extends StatelessWidget {
  String label;
  CustomTextField(this.label);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: CustomColors.blueColor),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        minLines: 3,
        maxLines: 3,
        decoration: InputDecoration(hintText: label, border: InputBorder.none),
      ),
    );
  }
}
