import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Color backGroundColor;
  const HomeScreen({Key? key, required this.backGroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor,
    );
  }
}
