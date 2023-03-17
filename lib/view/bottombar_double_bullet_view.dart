import 'package:bottom_bar/controller/bottombar_controller.dart';
import 'package:bottom_bar_matu/bottom_bar_double_bullet/bottom_bar_double_bullet.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarDoubleBulletView extends StatelessWidget {
  BottomBarDoubleBulletView({Key? key}) : super(key: key);

  final BottomBarController _controller = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBar Double Bullet"),
      ),
      body: Obx(() => _controller.widgetList[_controller.selectedIndex.value]),
      bottomNavigationBar: BottomBarDoubleBullet(
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
