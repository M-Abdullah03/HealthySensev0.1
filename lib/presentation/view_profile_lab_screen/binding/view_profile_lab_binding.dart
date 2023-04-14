import '../controller/view_profile_lab_controller.dart';
import 'package:get/get.dart';

class ViewProfileLabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewProfileLabController());
  }
}
