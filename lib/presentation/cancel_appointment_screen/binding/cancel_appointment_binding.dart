import '../controller/cancel_appointment_controller.dart';
import 'package:get/get.dart';

class CancelAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancelAppointmentController());
  }
}
