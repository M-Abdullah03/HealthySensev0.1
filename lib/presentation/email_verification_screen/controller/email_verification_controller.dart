import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/email_verification_screen/models/email_verification_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class EmailVerificationController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<EmailVerificationModel> emailVerificationModelObj = EmailVerificationModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
