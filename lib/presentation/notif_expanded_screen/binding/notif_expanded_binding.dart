import '../controller/notif_expanded_controller.dart';
import 'package:get/get.dart';

class NotifExpandedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotifExpandedController());
  }
}
