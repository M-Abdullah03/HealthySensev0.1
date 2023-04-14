import '../controller/appointments_controller.dart';
import 'package:get/get.dart';

class AppointmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentsController());
  }
}
