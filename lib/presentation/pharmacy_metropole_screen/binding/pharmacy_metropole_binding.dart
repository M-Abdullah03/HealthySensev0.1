import '../controller/pharmacy_metropole_controller.dart';
import 'package:get/get.dart';

class PharmacyMetropoleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PharmacyMetropoleController());
  }
}
