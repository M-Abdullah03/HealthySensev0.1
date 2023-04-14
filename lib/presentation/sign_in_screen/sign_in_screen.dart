import 'package:firebase_core/firebase_core.dart';

import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/core/utils/validation_functions.dart';
import 'package:healthysense/widgets/custom_button.dart';
import 'package:healthysense/widgets/custom_checkbox.dart';
import 'package:healthysense/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore_for_file: must_be_immutable
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
          return SignInScreen();
        } else {
          return CircularProgressIndicator();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        //return error Dialog
      },
    );
  }
}
 */
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //intialize firebase
  static Future<User?> googleSignin(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
      if (user != null) {
        Get.offAllNamed(AppRoutes.homeContainerScreen);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
            onConfirm: () => Get.back(),
            title: "Failure!",
            middleText: "User Not Found, Register?");
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
            onConfirm: () => Get.back(),
            title: "Failure!",
            middleText: "Invalid Credentials!");
        print('Wrong password provided for that user.');
      }
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
                                      height: getVerticalSize(199.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(151.00),
                                                    width: size.width,
                                                    margin:
                                                        getMargin(bottom: 10),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgVector2,
                                                                  height:
                                                                      getVerticalSize(
                                                                          151.00),
                                                                  width: getHorizontalSize(
                                                                      414.00))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 172,
                                                                      top: 20,
                                                                      right:
                                                                          172,
                                                                      bottom:
                                                                          20),
                                                                  child: Text(
                                                                      "lbl_sign_in"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRalewayBold20
                                                                          .copyWith(
                                                                              letterSpacing: 0.60))))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 127,
                                                        top: 10,
                                                        right: 127),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Text(
                                                                  "lbl_welcome_back"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRalewayBold20Blue801
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.60))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 7,
                                                                      top: 6,
                                                                      right: 7),
                                                              child: Text(
                                                                  "msg_sign_in_to_continue"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRalewaySemiBold15
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.45)))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 43, top: 38, right: 43),
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
                                  hintText: "msg_abc_mail_gmail_com".tr,
                                  margin:
                                      getMargin(left: 41, top: 4, right: 41),
                                  padding: TextFormFieldPadding.PaddingAll9,
                                  fontStyle:
                                      TextFormFieldFontStyle.RalewayMedium15,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 14,
                                          top: 18,
                                          right: 18,
                                          bottom: 13),
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
                                          left: 43, top: 5, right: 43),
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
                                  hintText: "Enter Password",
                                  margin:
                                      getMargin(left: 41, top: 7, right: 41),
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
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 0,
                                              top: 16,
                                              right: 23,
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
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      !controller.isShowPassword.value)),
                              Padding(
                                  padding:
                                      getPadding(left: 41, top: 9, right: 41),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Obx(() => CustomCheckbox(
                                            text: "lbl_remember_me".tr,
                                            iconSize: 10,
                                            value: controller.checkbox.value,
                                            padding: getPadding(bottom: 1),
                                            onChange: (value) {
                                              controller.checkbox.value = value;
                                            })),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: TextButton(
                                                onPressed: () {
                                                  Get.toNamed(AppRoutes
                                                      .forgotPassswordScreen);
                                                },
                                                child: Text(
                                                    "lbl_forgot_password".tr +
                                                        "?",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayMedium12
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.45))))
                                      ])),
                              CustomButton(
                                  width: 328,
                                  text: "lbl_sign_in".tr,
                                  margin:
                                      getMargin(left: 41, top: 21, right: 41),
                                  variant: ButtonVariant.OutlineBlack9003f,
                                  onTap: () async {
                                    User? user = await googleSignin(
                                        email:
                                            controller.emailOneController.text,
                                        password: controller
                                            .passwordOneController.text,
                                        context: context);
                                    if (user != null) {
                                      Get.offAllNamed(
                                          AppRoutes.homeContainerScreen);
                                    }
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 41, top: 34, right: 41),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(144.00),
                                            margin:
                                                getMargin(top: 12, bottom: 10),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue801)),
                                        Padding(
                                            padding: getPadding(left: 7),
                                            child: Text("lbl_or".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold20
                                                    .copyWith(
                                                        letterSpacing: 0.40))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(144.00),
                                            margin: getMargin(
                                                left: 7, top: 12, bottom: 10),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue801))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 41, top: 26, right: 41),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.indigo600,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder19),
                                            child: Container(
                                                height: getSize(38.00),
                                                width: getSize(38.00),
                                                decoration: AppDecoration
                                                    .fillIndigo600
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder19),
                                                child: Stack(children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 14,
                                                              top: 8,
                                                              right: 13,
                                                              bottom: 8),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgFacebook,
                                                              height:
                                                                  getVerticalSize(
                                                                      22.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      11.00))))
                                                ]))),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(left: 11),
                                            color: ColorConstant.cyan400,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder19),
                                            child: Container(
                                                height: getSize(38.00),
                                                width: getSize(38.00),
                                                decoration: AppDecoration
                                                    .fillCyan400
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder19),
                                                child: Stack(children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 9,
                                                              right: 10,
                                                              bottom: 10),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgGoogle,
                                                              height:
                                                                  getVerticalSize(
                                                                      19.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      18.00))))
                                                ]))),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(left: 11),
                                            color: ColorConstant.lightBlue600,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder19),
                                            child: Container(
                                                height: getSize(38.00),
                                                width: getSize(38.00),
                                                decoration: AppDecoration
                                                    .fillLightblue600
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder19),
                                                child: Stack(children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 8,
                                                              top: 10,
                                                              right: 8,
                                                              bottom: 10),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgTwitter,
                                                              height:
                                                                  getVerticalSize(
                                                                      18.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      22.00))))
                                                ])))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(180.00),
                                      width: size.width,
                                      margin: getMargin(top: 74),
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
                                                        left: 87,
                                                        top: 42,
                                                        right: 87,
                                                        bottom: 42),
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
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  "msg_don_t_have_an_account"
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
                                                                onTapTxtSignup();
                                                              },
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_sign_up"
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
  //firebase class

  /* googlesign() async {
    //TODO Bind email and password controller to below variable
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    final FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth
        .signInWithEmailAndPassword(
      email: controller.emailOneController.text, // Bind email Controller
      password:
          controller.passwordOneController.text, // Bind password Controller
    )
        .then((firebaseSignInUser) {
      if (firebaseSignInUser.user != null) {
        onSuccessFirebaseSignInResponse(firebaseSignInUser);
      } else {
        onErrorFirebaseSignInResponse();
      }
    }).catchError((onError) {
      Get.defaultDialog(
          onConfirm: () => Get.back(),
          title: "Failure!",
          middleText: controller.emailOneController.text +
              " " +
              controller.passwordOneController.text);
    });
  }
 */
  onSuccessFirebaseSignInResponse(UserCredential firebaseSignInUser) {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onErrorFirebaseSignInResponse() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Failure!",
        middleText: "Invalid Credentials!");
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
