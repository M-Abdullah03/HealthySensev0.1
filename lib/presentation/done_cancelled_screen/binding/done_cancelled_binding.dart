import '../controller/done_cancelled_controller.dart';
import 'package:get/get.dart';

class DoneCancelledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoneCancelledController());
  }
}
