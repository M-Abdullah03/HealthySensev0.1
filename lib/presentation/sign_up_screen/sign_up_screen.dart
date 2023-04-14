import 'package:firebase_core/firebase_core.dart';

import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/core/utils/validation_functions.dart';
import 'package:healthysense/widgets/custom_button.dart';
import 'package:healthysense/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

/* class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return SignUpScreen();
        } else {
          return CircularProgressIndicator();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        //return error Dialog
      },
    );
  }
} */

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static Future<User?> googleSignUp(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
      if (user != null) {
        Get.offAllNamed(AppRoutes.signInScreen);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.defaultDialog(
            onConfirm: () => Get.back(),
            title: "Failure!",
            middleText: "Weak Password");
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        //dialog
        Get.defaultDialog(
            onConfirm: () => Get.back(),
            title: "Failure!",
            middleText: "Email Already in Use! Sign in?");
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(151.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgVector2,
                                                    height:
                                                        getVerticalSize(151.00),
                                                    width: getHorizontalSize(
                                                        414.00))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 167,
                                                        top: 20,
                                                        right: 167,
                                                        bottom: 20),
                                                    child: Text(
                                                        "lbl_sign_up".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRalewayBold20
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.60))))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 42, top: 24, right: 42),
                                  child: Text("msg_create_new_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayBold20Lightblue900
                                          .copyWith(letterSpacing: 0.60))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 42, top: 23, right: 42),
                                      child: Text("lbl_email".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewaySemiBold15Gray90099
                                              .copyWith(letterSpacing: 0.45)))),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller: controller.emailOneController,
                                  hintText: "msg_john_doe1_gmail_com".tr,
                                  margin:
                                      getMargin(left: 42, top: 4, right: 42),
                                  padding: TextFormFieldPadding.PaddingAll9,
                                  fontStyle:
                                      TextFormFieldFontStyle.RalewayMedium15,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 15,
                                          top: 17,
                                          right: 11,
                                          bottom: 14),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgMail)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(14.00),
                                      minHeight: getSize(14.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 43, top: 24, right: 43),
                                      child: Text("lbl_username".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewaySemiBold15Gray90099
                                              .copyWith(letterSpacing: 0.45)))),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller: controller.languageController,
                                  hintText: "lbl_john_doe".tr,
                                  margin:
                                      getMargin(left: 42, top: 4, right: 42),
                                  padding: TextFormFieldPadding.PaddingAll9,
                                  fontStyle:
                                      TextFormFieldFontStyle.RalewayMedium15,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 15,
                                          top: 17,
                                          right: 19,
                                          bottom: 13),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgUser)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(14.00),
                                      minHeight: getSize(14.00))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 43, top: 24, right: 43),
                                      child: Text("lbl_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewaySemiBold15Gray90099
                                              .copyWith(letterSpacing: 0.45)))),
                              Obx(() => CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordOneController,
                                  hintText: "lbl".tr,
                                  margin:
                                      getMargin(left: 42, top: 7, right: 42),
                                  padding: TextFormFieldPadding.PaddingAll9,
                                  fontStyle:
                                      TextFormFieldFontStyle.RalewayBold15,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 13,
                                          top: 16,
                                          right: 22,
                                          bottom: 12),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(15.00),
                                      minHeight: getSize(15.00)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 0,
                                              top: 16,
                                              right: 20,
                                              bottom: 14),
                                          child: CommonImageView(
                                              svgPath: controller
                                                      .isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(15.00),
                                      minHeight: getVerticalSize(13.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password (min 4 characters, 1 uppercase,\n 1 lowercase, 1 number, 1 special character)";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      !controller.isShowPassword.value)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 42, top: 24, right: 42),
                                      child: Text("msg_confirm_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewaySemiBold15Gray90099
                                              .copyWith(letterSpacing: 0.45)))),
                              Obx(() => CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordTwoController,
                                  hintText: "lbl".tr,
                                  margin:
                                      getMargin(left: 42, top: 7, right: 42),
                                  padding: TextFormFieldPadding.PaddingAll9,
                                  fontStyle:
                                      TextFormFieldFontStyle.RalewayBold15,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 13,
                                          top: 16,
                                          right: 22,
                                          bottom: 12),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(15.00),
                                      minHeight: getSize(15.00)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword1.value =
                                            !controller.isShowPassword1.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 0,
                                              top: 16,
                                              right: 23,
                                              bottom: 14),
                                          child: CommonImageView(
                                              svgPath: controller
                                                      .isShowPassword1.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(15.00),
                                      minHeight: getVerticalSize(13.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      !controller.isShowPassword1.value)),
                              CustomButton(
                                  width: 330,
                                  text: "lbl_sign_up".tr,
                                  margin:
                                      getMargin(left: 42, top: 25, right: 42),
                                  onTap: () {
                                    print(
                                        controller.passwordOneController.text);
                                    print(
                                        controller.passwordTwoController.text);
                                    if (isValidPassword(controller
                                            .passwordOneController.text) &&
                                        isValidEmail(controller
                                            .emailOneController.text) &&
                                        controller.passwordOneController.text ==
                                            controller
                                                .passwordTwoController.text) {
                                      googleSignUp(
                                          email: controller
                                              .emailOneController.text,
                                          password: controller
                                              .passwordOneController.text,
                                          context: context);
                                    }
                                    //check if any key is invalid
                                    if (!isValidPassword(controller
                                            .passwordOneController.text) ||
                                        !isValidEmail(controller
                                            .emailOneController.text)) {
                                      //check if password and confirm password are same
                                      Get.defaultDialog(
                                          onConfirm: () => Get.back(),
                                          title: "Failure!",
                                          middleText: "Invalid Credentials!");
                                    }
                                    //check if password and confirm password are same
                                    else if (controller
                                            .passwordOneController.text
                                            .toString() !=
                                        controller.passwordTwoController.text
                                            .toString()) {
                                      //snackbar
                                      Get.defaultDialog(
                                          onConfirm: () => Get.back(),
                                          title: "Failure!",
                                          middleText:
                                              "Password and Confirm Password are not same!");
                                    }
                                  }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(200.00),
                                      width: size.width,
                                      margin: getMargin(top: 50),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgVector1,
                                                    height:
                                                        getVerticalSize(189.00),
                                                    width: getHorizontalSize(
                                                        414.00))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 82,
                                                        top: 43,
                                                        right: 82,
                                                        bottom: 43),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "msg_already_have_an"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRalewaySemiBold15WhiteA700
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.45))),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtSignin();
                                                              },
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              5,
                                                                          bottom:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_sign_in"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.txtRalewaySemiBold15WhiteA700.copyWith(
                                                                          letterSpacing:
                                                                              0.45,
                                                                          decoration:
                                                                              TextDecoration.underline))))
                                                        ])))
                                          ])))
                            ]))))));
  }

/*   signup() async {
    //TODO Bind email and password controller to below variable
    final FirebaseAuth _auth = FirebaseAuth.instance;
    if (controller.passwordOneController.text !=
        controller.passwordTwoController.text) {
      Get.snackbar("Error", "Passwords do not match");
      return;
    }
    await _auth
        .createUserWithEmailAndPassword(
      email: controller.emailOneController.text, // Bind email Controller
      password:
          controller.passwordOneController.text, // Bind password Controller
    )
        .then((firebaseSignUpUser) {
      if (firebaseSignUpUser.user != null) {
        onSuccessFirebaseSignUpResponse(firebaseSignUpUser);
      } else {
        onErrorFirebaseSignUpResponse();
      }
    }).catchError((onError) {
      onErrorFirebaseSignUpResponse();
    });
  } */

/*   onSuccessFirebaseSignUpResponse(UserCredential firebaseSignUpUser) {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onErrorFirebaseSignUpResponse() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error!",
        middleText: "Make Sure To Follow Instructions");
  } */

  onTapTxtSignin() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
