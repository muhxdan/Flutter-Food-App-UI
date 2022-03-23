import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/app/modules/constants/color.dart';
import 'package:get/get.dart';
import '../controllers/food_d_controller.dart';

class DetailsDesc extends GetView<FoodDController> {
  @override
  Widget build(BuildContext context) {
    final FoodDController ctrl = Get.put(FoodDController());
    return Container(
      width: double.infinity,
      height: Get.height * .6,
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
              fontWeight: FontWeight.w700,
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
                "Delivers in ${Get.arguments[2].toString()}",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Get.arguments[3].toString(),
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        ctrl.decrement();
                      },
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Obx(
                      () => Text(
                        ctrl.count.value.toString(),
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        ctrl.increment();
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Add to Cart",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: kColorsBlack,
                minimumSize: Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          )
        ],
      ),
    );
  }
}
