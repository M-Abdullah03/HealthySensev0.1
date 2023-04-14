import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/reschedule_appointment_screen/models/reschedule_appointment_model.dart';class RescheduleAppointmentController extends GetxController {Rx<RescheduleAppointmentModel> rescheduleAppointmentModelObj = RescheduleAppointmentModel().obs;

RxString radioGroup = "".obs;

RxString radioGroup1 = "".obs;

RxString radioGroup2 = "".obs;

RxString radioGroup3 = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
