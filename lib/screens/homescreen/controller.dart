import 'package:get/get.dart';

class ListController extends GetxController {
  Rx<int> selectedindex = 0.obs;

  onchange(index) {
    selectedindex.value = index;
  }
}
