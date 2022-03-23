import 'package:flutter/material.dart';
import 'package:food_app/app/modules/constants/color.dart';
import 'package:get/get.dart';
import '../controllers/food_d_controller.dart';

class DetailsImage extends GetView<FoodDController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: kColorsWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(42),
                      topRight: Radius.circular(42),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              Get.arguments[0].toString(),
              width: 260,
            ),
          )
        ],
      ),
    );
  }
}
