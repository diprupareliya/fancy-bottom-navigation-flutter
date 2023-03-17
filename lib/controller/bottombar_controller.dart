import 'package:bottom_bar/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController{
  RxInt selectedIndex = 0.obs;
  List widgetList = [
    const HomeScreen(backGroundColor: Colors.red),
    const HomeScreen(backGroundColor: Colors.yellow),
    const HomeScreen(backGroundColor: Colors.green),
    const HomeScreen(backGroundColor: Colors.blue),
    const HomeScreen(backGroundColor: Colors.deepOrange),
  ];
}