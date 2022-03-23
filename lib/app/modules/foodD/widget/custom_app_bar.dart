import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/food_d_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarFood extends GetView<FoodDController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset("assets/icons/ChevronLeftArrow.svg"),
          ),
          SvgPicture.asset("assets/icons/HeartLoveLike.svg"),
        ],
      ),
    );
  }
}
