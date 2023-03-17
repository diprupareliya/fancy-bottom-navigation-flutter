import 'package:bottom_bar/controller/bottombar_controller.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:bottom_bar_matu/bottom_bar_label_slide/bottom_bar_label_slide.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarLabelSlideView extends StatelessWidget {
  BottomBarLabelSlideView({Key? key}) : super(key: key);

  final BottomBarController _controller = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBar Label Slide"),
      ),
      body: Obx(() => _controller.widgetList[_controller.selectedIndex.value]),
      bottomNavigationBar: BottomBarLabelSlide(
        selectedIndex: _controller.selectedIndex.value,
        items: [
          BottomBarItem(iconData: Icons.home, label: "Home"),
          BottomBarItem(iconData: Icons.chat, label: "Chat"),
          BottomBarItem(iconData: Icons.notifications, label: "Notification"),
          BottomBarItem(iconData: Icons.calendar_month, label: "Calendar"),
          BottomBarItem(iconData: Icons.settings, label: "Setting"),
        ],
        onSelect: (index) {
          _controller.selectedIndex.value = index;
        },
      ),
    );
  }
}
