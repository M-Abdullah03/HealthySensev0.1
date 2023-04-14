import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/presentation/top_doctors_page/controller/top_doctors_controller.dart';
import 'package:healthysense/presentation/top_doctors_page/models/top_doctors_model.dart';

class TopDoctorsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopDoctorsController((TopDoctorsModel().obs)));
  }
}
