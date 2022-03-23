import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../constants/color.dart';
import '../widget/custom_app_bar.dart';
import '../widget/find.dart';
import '../widget/food.dart';
import '../widget/title_search.dart';
import '../widget/category_food.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class HomeView extends GetView<HomeController> {
  HomeController ctrl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorsWhite100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                TitleSearch(),
                Find(),
                CategoryFood(),
                Food(),
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Obx(
        () => DotNavigationBar(
          backgroundColor: kColorsBlack,
          currentIndex: ctrl.tabIndex.value,
          dotIndicatorColor: kColorsYellow,
          borderRadius: 18,
          marginR: EdgeInsets.fromLTRB(25, 0, 25, 25),
          paddingR: EdgeInsets.symmetric(vertical: 15),
          enablePaddingAnimation: false,
          onTap: ctrl.changeTabIndex,
          curve: Curves.fastLinearToSlowEaseIn,
          items: [
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/HomeHouse.svg",
                color:
                    (ctrl.tabIndex.value == 0) ? kColorsYellow : kColorsWhite,
              ),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ShoppingAltBag.svg",
                color:
                    (ctrl.tabIndex.value == 1) ? kColorsYellow : kColorsWhite,
              ),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/LocationPin.svg",
                color:
                    (ctrl.tabIndex.value == 2) ? kColorsYellow : kColorsWhite,
              ),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/HeartLoveLike.svg",
                color:
                    (ctrl.tabIndex.value == 3) ? kColorsYellow : kColorsWhite,
              ),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/UserAccountProfile.svg",
                color:
                    (ctrl.tabIndex.value == 4) ? kColorsYellow : kColorsWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
