import '../controller/payment_mart_controller.dart';
import 'package:get/get.dart';

class PaymentMartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMartController());
  }
}
