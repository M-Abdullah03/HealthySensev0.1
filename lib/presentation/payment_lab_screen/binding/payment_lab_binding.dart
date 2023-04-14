import '../controller/payment_lab_controller.dart';
import 'package:get/get.dart';

class PaymentLabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentLabController());
  }
}
