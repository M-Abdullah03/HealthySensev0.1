import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/appointments_screen/models/appointments_model.dart';class AppointmentsController extends GetxController {Rx<AppointmentsModel> appointmentsModelObj = AppointmentsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
