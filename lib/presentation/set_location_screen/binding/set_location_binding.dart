import '../controller/set_location_controller.dart';
import 'package:get/get.dart';

class SetLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetLocationController());
  }
}
