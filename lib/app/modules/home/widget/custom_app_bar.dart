import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class CustomAppBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/icons/fire.png",
          width: 27.32,
          height: 34.99,
        ),
        Image.asset(
          "assets/icons/bar.png",
          width: 21,
          height: 16,
        ),
      ],
    );
  }
}
