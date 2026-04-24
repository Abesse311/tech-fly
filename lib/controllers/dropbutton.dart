import 'package:get/get.dart';

class BookingController extends GetxController {
  var selectedDuration = RxnString(); // nullable

  void updateDuration(String? value) {
    selectedDuration.value = value;
  }
}