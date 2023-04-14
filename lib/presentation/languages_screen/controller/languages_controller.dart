import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/languages_screen/models/languages_model.dart';class LanguagesController extends GetxController {Rx<LanguagesModel> languagesModelObj = LanguagesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
