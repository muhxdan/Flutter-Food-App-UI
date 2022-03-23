import 'package:get/get.dart';

import '../controllers/food_d_controller.dart';

class FoodDBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodDController>(
      () => FoodDController(),
    );
  }
}
