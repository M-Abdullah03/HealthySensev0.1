import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/write_review_screen/models/write_review_model.dart';import 'package:flutter/material.dart';class WriteReviewController extends GetxController {TextEditingController descriptionController = TextEditingController();

Rx<WriteReviewModel> writeReviewModelObj = WriteReviewModel().obs;

RxString radioGroup = "".obs;

RxString radioGroup1 = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); descriptionController.dispose(); } 
 }
