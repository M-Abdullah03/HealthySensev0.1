import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/dialog_screen/models/dialog_model.dart';class DialogController extends GetxController {Rx<DialogModel> dialogModelObj = DialogModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
