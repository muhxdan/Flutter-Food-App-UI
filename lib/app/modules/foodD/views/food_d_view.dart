import 'package:flutter/material.dart';
import 'package:food_app/app/modules/constants/color.dart';
import 'package:get/get.dart';
import '../controllers/food_d_controller.dart';
import '../widget/custom_app_bar.dart';
import '../widget/details_food_desc.dart';
import '../widget/details_food_image.dart';

class FoodView extends GetView<FoodDController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorsYellow,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBarFood(),
              DetailsImage(),
              DetailsDesc(),
            ],
          ),
        ),
      ),
    );
  }
}
