import '../controller/doctor_page_controller.dart';
import 'package:get/get.dart';

class DoctorPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorPageController());
  }
}
