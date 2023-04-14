import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/prescriptions_page/models/prescriptions_model.dart';class PrescriptionsController extends GetxController {PrescriptionsController(this.prescriptionsModelObj);

Rx<PrescriptionsModel> prescriptionsModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
