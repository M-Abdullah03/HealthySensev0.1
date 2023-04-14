import '../controller/intro_one_controller.dart';
import 'package:get/get.dart';

class IntroOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroOneController());
  }
}
