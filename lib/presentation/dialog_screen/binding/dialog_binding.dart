import '../controller/dialog_controller.dart';
import 'package:get/get.dart';

class DialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DialogController());
  }
}
