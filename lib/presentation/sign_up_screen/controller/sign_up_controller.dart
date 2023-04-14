import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';class SignUpController extends GetxController {TextEditingController emailOneController = TextEditingController();

TextEditingController languageController = TextEditingController();

TextEditingController passwordOneController = TextEditingController();

TextEditingController passwordTwoController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<bool> isShowPassword = false.obs;

Rx<bool> isShowPassword1 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailOneController.dispose(); languageController.dispose(); passwordOneController.dispose(); passwordTwoController.dispose(); } 
 }
