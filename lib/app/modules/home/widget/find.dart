import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../constants/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Find extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Find ",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        Text(
          "5km ",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            color: kColorsOrange,
          ),
        ),
        SvgPicture.asset(
          "assets/icons/ChevronRightArrow.svg",
          width: 10,
        ),
      ],
    );
  }
}
