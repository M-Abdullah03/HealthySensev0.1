import '../controller/reschedule_date_controller.dart';
import 'package:get/get.dart';

class RescheduleDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RescheduleDateController());
  }
}
