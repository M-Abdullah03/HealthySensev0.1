import '../controller/confirmed_payment_mart_controller.dart';
import 'package:get/get.dart';

class ConfirmedPaymentMartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmedPaymentMartController());
  }
}
