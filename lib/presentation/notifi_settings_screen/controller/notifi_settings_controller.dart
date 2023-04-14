import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/notifi_settings_screen/models/notifi_settings_model.dart';class NotifiSettingsController extends GetxController {Rx<NotifiSettingsModel> notifiSettingsModelObj = NotifiSettingsModel().obs;

RxBool isSelectedSwitch = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
