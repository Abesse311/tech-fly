import 'package:get/get.dart';

class BookingController extends GetxController {
  var selectedDuration = RxnString(); 

  void updateDuration(String? value) {
    selectedDuration.value = value;
  }
}