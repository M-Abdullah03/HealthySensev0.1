import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/mart_cart_screen/models/mart_cart_model.dart';class MartCartController extends GetxController {Rx<MartCartModel> martCartModelObj = MartCartModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
