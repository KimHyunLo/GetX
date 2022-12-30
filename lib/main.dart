import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/bottom_sheet_screen.dart';
import 'package:getx_tutorial/screens/dialog_screen.dart';
import 'package:getx_tutorial/screens/navigation_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const NavigationScreen(),
    ),
  );
}
