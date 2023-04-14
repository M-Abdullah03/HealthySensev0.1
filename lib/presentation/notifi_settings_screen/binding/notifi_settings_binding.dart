import '../controller/notifi_settings_controller.dart';
import 'package:get/get.dart';

class NotifiSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotifiSettingsController());
  }
}
