import '../controller/sort_controller.dart';
import 'package:get/get.dart';

class SortBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SortController());
  }
}
