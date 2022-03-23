import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../constants/color.dart';

class CategoryFood extends GetView<HomeController> {
  List<String> category = ["Set meal", "Hot meal", "Popular"];
  int selectedx = 0;
  final HomeController ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            ctrl.selected.value = index;
          },
          child: Obx(
            () => Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: (ctrl.selected.value == index)
                    ? kColorsYellow
                    : kColorsWhite,
                boxShadow: [
                  (ctrl.selected.value != index)
                      ? BoxShadow(
                          blurRadius: 10,
                          color: kColorsBlack1.withOpacity(.3),
                          offset: Offset(0, 5),
                        )
                      : BoxShadow(color: Colors.transparent),
                ],  
              ),
              child: Text(
                category[index],
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(
          width: 12,
        ),
      ),
    );
  }
}

// Container(
//       height: 100,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: category.length,
//         itemBuilder: (_, index) => Padding(
//             padding: EdgeInsets.all(5),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: kColorsYellow,
//                 borderRadius: BorderRadius.circular(25),
//               ),

//             )),
//       ),
//     );
