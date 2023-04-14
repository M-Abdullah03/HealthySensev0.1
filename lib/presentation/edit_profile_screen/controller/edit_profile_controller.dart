import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';class EditProfileController extends GetxController {TextEditingController group4304Controller = TextEditingController();

TextEditingController emailOneController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController group4307Controller = TextEditingController();

TextEditingController mobileNoController = TextEditingController();

TextEditingController genderOneController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group4304Controller.dispose(); emailOneController.dispose(); dateController.dispose(); group4307Controller.dispose(); mobileNoController.dispose(); genderOneController.dispose(); } 
 }
