import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/search_doctors_screen/models/search_doctors_model.dart';import 'package:flutter/material.dart';class SearchDoctorsController extends GetxController {TextEditingController rowsearchController = TextEditingController();

Rx<SearchDoctorsModel> searchDoctorsModelObj = SearchDoctorsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); rowsearchController.dispose(); } 
 }
