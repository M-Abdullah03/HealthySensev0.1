import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/forgot_passsword_screen/models/forgot_passsword_model.dart';import 'package:flutter/material.dart';class ForgotPassswordController extends GetxController {TextEditingController emailOneController = TextEditingController();

Rx<ForgotPassswordModel> forgotPassswordModelObj = ForgotPassswordModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailOneController.dispose(); } 
 }
