import '../controller/doctor_pagetwo_controller.dart';
import 'package:get/get.dart';

class DoctorPagetwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorPagetwoController());
  }
}
