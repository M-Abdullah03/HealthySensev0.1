import '../controller/confirmed_payment_lab_controller.dart';
import 'package:get/get.dart';

class ConfirmedPaymentLabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmedPaymentLabController());
  }
}
