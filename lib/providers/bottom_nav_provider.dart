import 'package:flutter/material.dart';

class BottomNavProvider extends ChangeNotifier {
  int bottomIndex = 3;

  changeBottomNavBarIndex(int index) {
    bottomIndex = index;
    notifyListeners();
  }
}
