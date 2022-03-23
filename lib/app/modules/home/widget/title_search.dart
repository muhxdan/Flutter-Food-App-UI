import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../constants/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleSearch extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          "Find good\nfood arround you",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            fontSize: 32,
            height: 1.4,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          margin: EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kColorsWhite,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: kColorsBlack1.withOpacity(.3),
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: TextField(
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.text,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search your food here",
              hintStyle: TextStyle(
                color: kColorsBlack1,
                decoration: TextDecoration.none,
              ),
              prefixIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: SvgPicture.asset(
                  "assets/icons/Search.svg",
                ),
              ),
              suffixIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 11),
                child: SvgPicture.asset(
                  "assets/icons/AdjustHorizontalSettings.svg",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
