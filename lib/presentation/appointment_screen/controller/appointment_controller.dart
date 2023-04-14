import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/appointment_screen/models/appointment_model.dart';class AppointmentController extends GetxController {Rx<AppointmentModel> appointmentModelObj = AppointmentModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
