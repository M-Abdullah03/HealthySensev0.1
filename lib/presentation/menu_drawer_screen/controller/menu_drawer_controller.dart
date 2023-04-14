import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/menu_drawer_screen/models/menu_drawer_model.dart';class MenuDrawerController extends GetxController {Rx<MenuDrawerModel> menuDrawerModelObj = MenuDrawerModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
