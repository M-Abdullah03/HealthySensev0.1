import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/presentation/top_doctors_page/models/top_doctors_model.dart';

class TopDoctorsController extends GetxController {
  //default constructor

  TopDoctorsController(this.topDoctorsModelObj);

  Rx<TopDoctorsModel> topDoctorsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
