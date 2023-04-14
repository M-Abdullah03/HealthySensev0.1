import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/presentation/specialities_screen/models/specialities_model.dart';

class SpecialitiesController extends GetxController {
  Rx<SpecialitiesModel> specialitiesModelObj = SpecialitiesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
