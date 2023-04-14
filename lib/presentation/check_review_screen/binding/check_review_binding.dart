import '../controller/check_review_controller.dart';
import 'package:get/get.dart';

class CheckReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckReviewController());
  }
}
