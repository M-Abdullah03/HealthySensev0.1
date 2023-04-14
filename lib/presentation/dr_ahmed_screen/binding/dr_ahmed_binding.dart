import '../controller/dr_ahmed_controller.dart';
import 'package:get/get.dart';

class DrAhmedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrAhmedController());
  }
}
