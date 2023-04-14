import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  RxBool checkbox = false.obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  } //emailOneController.dispose(); passwordOneController.dispose(); }
}
