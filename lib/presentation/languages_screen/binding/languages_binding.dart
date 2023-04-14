import '../controller/languages_controller.dart';
import 'package:get/get.dart';

class LanguagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguagesController());
  }
}
