import 'package:flutter/material.dart';
import 'package:nile_crm/providers/bottom_nav_provider.dart';
import 'package:nile_crm/ui/bottom_nav_screens/tasks_screen.dart';
import 'package:nile_crm/ui/bottom_nav_screens/visits_screen.dart';
import 'package:nile_crm/ui/colors.dart';
import 'package:nile_crm/ui/drawer.dart';
import 'package:provider/provider.dart';

import 'bottom_nav_screens/messages_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bottomNavProvider = Provider.of<BottomNavProvider>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.blueColor,
          title: Text(getTabName(bottomNavProvider.bottomIndex)),
          centerTitle: false,
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: CustomColors.blueColor,
          currentIndex: bottomNavProvider.bottomIndex,
          onTap: (i) => bottomNavProvider.changeBottomNavBarIndex(i),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                backgroundColor: CustomColors.blueColor,
                icon: Icon(Icons.location_city),
                label: 'Visits'),
            BottomNavigationBarItem(
                backgroundColor: CustomColors.blueColor,
                icon: Icon(Icons.notes),
                label: 'Tasks'),
            BottomNavigationBarItem(
                backgroundColor: CustomColors.blueColor,
                icon: Icon(Icons.message),
                label: 'Messages'),
            BottomNavigationBarItem(
                backgroundColor: CustomColors.blueColor,
                icon: Icon(Icons.sync),
                label: 'Sync')
          ],
        ),
        body: (bottomNavProvider.bottomIndex == 0) ||
                (bottomNavProvider.bottomIndex == 3)
            ? Visits()
            : (bottomNavProvider.bottomIndex == 1)
                ? Tasks()
                : Messages());
  }

  String getTabName(int index) {
    var tabsTitle = {0: "Visits", 1: "Tasks", 2: "Messages", 3: "NileCRM"};

    return tabsTitle[index];
  }
}
