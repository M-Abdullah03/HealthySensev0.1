import '../controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuDrawerController());
  }
}
