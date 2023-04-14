import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/presentation/home_page/home_page.dart';
import 'package:healthysense/presentation/labs_page/labs_page.dart';
import 'package:healthysense/presentation/my_appointments_page/my_appointments_page.dart';
import 'package:healthysense/presentation/prescriptions_page/prescriptions_page.dart';
import 'package:healthysense/presentation/top_doctors_page/top_doctors_page.dart';
import 'package:healthysense/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(() => getCurrentWidget(controller.type.value)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Fluenthome48:
        return HomePage();
      case BottomBarEnum.Fluentmdl2med:
        return TopDoctorsPage();
      case BottomBarEnum.Vector:
        return MyAppointmentsPage();
      case BottomBarEnum.Entypolabflas:
        return LabsPage();
      case BottomBarEnum.Gameiconsmedi:
        return PrescriptionsPage();
      default:
        return getDefaultWidget();
    }
  }
}
