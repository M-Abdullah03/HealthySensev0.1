import '../controller/medicine_controller.dart';
import 'package:get/get.dart';

class MedicineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MedicineController());
  }
}
