import '../controller/confirmed_payment_controller.dart';
import 'package:get/get.dart';

class ConfirmedPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmedPaymentController());
  }
}
