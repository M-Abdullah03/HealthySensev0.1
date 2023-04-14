import '../controller/lab_appointment_controller.dart';
import 'package:get/get.dart';

class LabAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LabAppointmentController());
  }
}
