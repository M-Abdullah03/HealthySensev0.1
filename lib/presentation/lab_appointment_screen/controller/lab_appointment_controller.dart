import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/lab_appointment_screen/models/lab_appointment_model.dart';class LabAppointmentController extends GetxController {Rx<LabAppointmentModel> labAppointmentModelObj = LabAppointmentModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
