import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/dr_ahmed_screen/models/dr_ahmed_model.dart';import 'package:flutter/material.dart';class DrAhmedController extends GetxController {TextEditingController group794Controller = TextEditingController();

Rx<DrAhmedModel> drAhmedModelObj = DrAhmedModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group794Controller.dispose(); } 
 }
