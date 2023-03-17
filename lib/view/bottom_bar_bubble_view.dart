import 'package:bottom_bar/controller/bottombar_controller.dart';
import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarBubbleView extends StatelessWidget {
  BottomBarBubbleView({Key? key}) : super(key: key);

  final BottomBarController _controller = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBar Bubble"),
      ),
      body: Obx(() => _controller.widgetList[_controller.selectedIndex.value]),
      bottomNavigationBar: BottomBarBubble(
        selectedIndex: _controller.selectedIndex.value,
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.chat),
          BottomBarItem(iconData: Icons.notifications),
          BottomBarItem(iconData: Icons.calendar_month),
          BottomBarItem(iconData: Icons.settings),
        ],
        onSelect: (index) {
          _controller.selectedIndex.value = index;
        },
      ),
    );
  }
}
