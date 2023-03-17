import 'package:bottom_bar/controller/bottombar_controller.dart';
import 'package:bottom_bar/view/bottom_bar_bubble_view.dart';
import 'package:bottom_bar/view/bottombar_double_bullet_view.dart';
import 'package:bottom_bar/view/bottombar_label_slide_view.dart';
import 'package:bottom_bar_matu/bottom_bar_double_bullet/bottom_bar_double_bullet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final BottomBarController _controller = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              _controller.selectedIndex.value = 0;
              Get.to(BottomBarBubbleView());
            }, child: const Text("BottomBar Bubble")),
            ElevatedButton(onPressed: (){
              _controller.selectedIndex.value = 0;
              Get.to(BottomBarDoubleBulletView());
            }, child: const Text("BottomBar Double Bullet")),
            ElevatedButton(onPressed: (){
              _controller.selectedIndex.value = 0;
              Get.to(BottomBarLabelSlideView());
            }, child: const Text("BottomBar Label Slide"))
          ],
        ),
      ),
    );
  }
}
