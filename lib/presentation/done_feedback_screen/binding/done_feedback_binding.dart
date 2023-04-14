import '../controller/done_feedback_controller.dart';
import 'package:get/get.dart';

class DoneFeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoneFeedbackController());
  }
}
