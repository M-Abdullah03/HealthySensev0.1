import '../controller/intro_two_controller.dart';
import 'package:get/get.dart';

class IntroTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroTwoController());
  }
}
