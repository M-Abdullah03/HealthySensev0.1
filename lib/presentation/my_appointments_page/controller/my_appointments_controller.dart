import 'package:healthysense/core/app_export.dart';import 'package:healthysense/presentation/my_appointments_page/models/my_appointments_model.dart';class MyAppointmentsController extends GetxController {MyAppointmentsController(this.myAppointmentsModelObj);

Rx<MyAppointmentsModel> myAppointmentsModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
