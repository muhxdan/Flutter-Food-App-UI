import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/app/modules/constants/color.dart';
import 'package:get/get.dart';
import '../controllers/food_d_controller.dart';

class DetailsDesc extends GetView<FoodDController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1000,
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 25),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Get.arguments[1].toString(),
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sanctus lorem nonumy ea kasd tempor sit, takimata sed sit sadipscing stet et erat, duo stet clita vero est, diam sanctus erat et rebum et amet et. Et et stet.",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: kColorsBlack2,
              height: 1.8,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/BikerCycle.svg",
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Delivers in 30mins",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
