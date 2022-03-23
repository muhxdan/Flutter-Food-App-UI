import 'package:get/get.dart';

class FoodDController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  int decrement() {
    if (count > 0) {
      return count.value--;
    } else {
      return count.value;
    }
  }
}
