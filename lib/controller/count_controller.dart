import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt counter = 1.obs;
  void increment() {
    counter++;
  }

  void decrement() {
    if (counter > 1) {
      counter--;
    }
  }
}
