import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/payment_screen/models/payment_model.dart';import 'package:flutter/material.dart';class PaymentController extends GetxController {TextEditingController group547Controller = TextEditingController();

Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group547Controller.dispose(); } 
 }
