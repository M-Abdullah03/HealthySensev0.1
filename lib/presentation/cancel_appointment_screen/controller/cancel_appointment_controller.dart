import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/cancel_appointment_screen/models/cancel_appointment_model.dart';class CancelAppointmentController extends GetxController {Rx<CancelAppointmentModel> cancelAppointmentModelObj = CancelAppointmentModel().obs;

RxString radioGroup = "".obs;

RxString radioGroup1 = "".obs;

RxString radioGroup2 = "".obs;

RxString radioGroup3 = "".obs;

RxString radioGroup4 = "".obs;

RxString radioGroup5 = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
