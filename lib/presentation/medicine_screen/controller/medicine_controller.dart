import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/medicine_screen/models/medicine_model.dart';class MedicineController extends GetxController {Rx<MedicineModel> medicineModelObj = MedicineModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
