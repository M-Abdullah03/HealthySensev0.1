import '../controller/forgot_passsword_controller.dart';
import 'package:get/get.dart';

class ForgotPassswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPassswordController());
  }
}
