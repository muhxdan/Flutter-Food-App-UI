import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/app/modules/constants/color.dart';
import 'package:food_app/app/modules/foodD/views/food_d_view.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../home/widget/list_food.dart';

class Food extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .7,
      child: GridView.builder(
        physics: new NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (context.isLandscape == true)
              ? 4
              : (Get.width <= 450)
                  ? 2
                  : 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          childAspectRatio: (1 / 1.4),
        ),
        itemCount: list.length,
        itemBuilder: (context, index) => Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: kColorsWhite,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: kColorsBlack1.withOpacity(.3),
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            list[index].name,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                list[index].time,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  color: kColorsBlack1,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.star_rounded,
                                size: 16,
                                color: kColorsBlack1,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                list[index].stars,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  color: kColorsBlack1,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            list[index].price,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        () => FoodView(),
                        arguments: [
                          list[index].image,
                          list[index].name,
                          list[index].time,
                          list[index].price,
                        ],
                      );
                    },
                    child: Image.asset(
                      list[index].image,
                      width: 90,
                      height: 90,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
