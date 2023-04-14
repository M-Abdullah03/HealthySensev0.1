import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/payment_lab_screen/models/payment_lab_model.dart';import 'package:flutter/material.dart';class PaymentLabController extends GetxController {TextEditingController group547Controller = TextEditingController();

Rx<PaymentLabModel> paymentLabModelObj = PaymentLabModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group547Controller.dispose(); } 
 }
