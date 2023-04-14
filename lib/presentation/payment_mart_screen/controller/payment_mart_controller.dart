import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/payment_mart_screen/models/payment_mart_model.dart';import 'package:flutter/material.dart';class PaymentMartController extends GetxController {TextEditingController group547Controller = TextEditingController();

Rx<PaymentMartModel> paymentMartModelObj = PaymentMartModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group547Controller.dispose(); } 
 }
