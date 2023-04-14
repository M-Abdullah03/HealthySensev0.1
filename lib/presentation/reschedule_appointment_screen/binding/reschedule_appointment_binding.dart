import '../controller/reschedule_appointment_controller.dart';
import 'package:get/get.dart';

class RescheduleAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RescheduleAppointmentController());
  }
}
