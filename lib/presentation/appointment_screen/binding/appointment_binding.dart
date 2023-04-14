import '../controller/appointment_controller.dart';
import 'package:get/get.dart';

class AppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentController());
  }
}
