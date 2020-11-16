import 'package:flutter/material.dart';
import 'package:nile_crm/providers/bottom_nav_provider.dart';
import 'package:nile_crm/ui/home.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => BottomNavProvider(),
        lazy: false,
      ),
    ],
    child: MaterialApp(
      home: Home(),
    ),
  ));
}
