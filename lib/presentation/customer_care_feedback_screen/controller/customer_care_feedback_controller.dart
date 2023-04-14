import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/customer_care_feedback_screen/models/customer_care_feedback_model.dart';import 'package:flutter/material.dart';class CustomerCareFeedbackController extends GetxController {TextEditingController descriptionController = TextEditingController();

Rx<CustomerCareFeedbackModel> customerCareFeedbackModelObj = CustomerCareFeedbackModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); descriptionController.dispose(); } 
 }
