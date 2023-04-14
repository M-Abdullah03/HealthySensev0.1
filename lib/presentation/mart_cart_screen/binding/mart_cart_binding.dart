import '../controller/mart_cart_controller.dart';
import 'package:get/get.dart';

class MartCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MartCartController());
  }
}
