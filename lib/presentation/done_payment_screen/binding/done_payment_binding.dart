import '../controller/done_payment_controller.dart';
import 'package:get/get.dart';

class DonePaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DonePaymentController());
  }
}
