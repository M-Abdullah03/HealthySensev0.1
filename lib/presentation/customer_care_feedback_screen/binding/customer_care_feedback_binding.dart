import '../controller/customer_care_feedback_controller.dart';
import 'package:get/get.dart';

class CustomerCareFeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomerCareFeedbackController());
  }
}
