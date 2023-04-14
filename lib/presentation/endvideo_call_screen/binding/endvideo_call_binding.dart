import '../controller/endvideo_call_controller.dart';
import 'package:get/get.dart';

class EndvideoCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EndvideoCallController());
  }
}
