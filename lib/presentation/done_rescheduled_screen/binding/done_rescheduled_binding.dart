import '../controller/done_rescheduled_controller.dart';
import 'package:get/get.dart';

class DoneRescheduledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoneRescheduledController());
  }
}
