import 'package:healthysense/presentation/notif_expanded_screen/notif_expanded_screen.dart';
import 'package:healthysense/presentation/notif_expanded_screen/binding/notif_expanded_binding.dart';
import 'package:healthysense/presentation/dialog_screen/dialog_screen.dart';
import 'package:healthysense/presentation/dialog_screen/binding/dialog_binding.dart';
import 'package:healthysense/presentation/splash_screen/splash_screen.dart';
import 'package:healthysense/presentation/splash_screen/binding/splash_binding.dart';
import 'package:healthysense/presentation/intro_one_screen/intro_one_screen.dart';
import 'package:healthysense/presentation/intro_one_screen/binding/intro_one_binding.dart';
import 'package:healthysense/presentation/intro_two_screen/intro_two_screen.dart';
import 'package:healthysense/presentation/intro_two_screen/binding/intro_two_binding.dart';
import 'package:healthysense/presentation/intro_three_screen/intro_three_screen.dart';
import 'package:healthysense/presentation/intro_three_screen/binding/intro_three_binding.dart';
import 'package:healthysense/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:healthysense/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:healthysense/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:healthysense/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:healthysense/presentation/forgot_passsword_screen/forgot_passsword_screen.dart';
import 'package:healthysense/presentation/forgot_passsword_screen/binding/forgot_passsword_binding.dart';
import 'package:healthysense/presentation/email_verification_screen/email_verification_screen.dart';
import 'package:healthysense/presentation/email_verification_screen/binding/email_verification_binding.dart';
import 'package:healthysense/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:healthysense/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:healthysense/presentation/home_container_screen/home_container_screen.dart';
import 'package:healthysense/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:healthysense/presentation/specialities_screen/specialities_screen.dart';
import 'package:healthysense/presentation/specialities_screen/binding/specialities_binding.dart';
import 'package:healthysense/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:healthysense/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:healthysense/presentation/notifications_screen/notifications_screen.dart';
import 'package:healthysense/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:healthysense/presentation/menu_drawer_screen/menu_drawer_screen.dart';
import 'package:healthysense/presentation/menu_drawer_screen/binding/menu_drawer_binding.dart';
import 'package:healthysense/presentation/doctor_page_screen/doctor_page_screen.dart';
import 'package:healthysense/presentation/doctor_page_screen/binding/doctor_page_binding.dart';
import 'package:healthysense/presentation/doctor_pagetwo_screen/doctor_pagetwo_screen.dart';
import 'package:healthysense/presentation/doctor_pagetwo_screen/binding/doctor_pagetwo_binding.dart';
import 'package:healthysense/presentation/appointments_screen/appointments_screen.dart';
import 'package:healthysense/presentation/appointments_screen/binding/appointments_binding.dart';
import 'package:healthysense/presentation/payment_screen/payment_screen.dart';
import 'package:healthysense/presentation/payment_screen/binding/payment_binding.dart';
import 'package:healthysense/presentation/confirmed_payment_screen/confirmed_payment_screen.dart';
import 'package:healthysense/presentation/confirmed_payment_screen/binding/confirmed_payment_binding.dart';
import 'package:healthysense/presentation/done_payment_screen/done_payment_screen.dart';
import 'package:healthysense/presentation/done_payment_screen/binding/done_payment_binding.dart';
import 'package:healthysense/presentation/appointment_screen/appointment_screen.dart';
import 'package:healthysense/presentation/appointment_screen/binding/appointment_binding.dart';
import 'package:healthysense/presentation/endvideo_call_screen/endvideo_call_screen.dart';
import 'package:healthysense/presentation/endvideo_call_screen/binding/endvideo_call_binding.dart';
import 'package:healthysense/presentation/cancel_appointment_screen/cancel_appointment_screen.dart';
import 'package:healthysense/presentation/cancel_appointment_screen/binding/cancel_appointment_binding.dart';
import 'package:healthysense/presentation/done_cancelled_screen/done_cancelled_screen.dart';
import 'package:healthysense/presentation/done_cancelled_screen/binding/done_cancelled_binding.dart';
import 'package:healthysense/presentation/reschedule_appointment_screen/reschedule_appointment_screen.dart';
import 'package:healthysense/presentation/reschedule_appointment_screen/binding/reschedule_appointment_binding.dart';
import 'package:healthysense/presentation/reschedule_date_screen/reschedule_date_screen.dart';
import 'package:healthysense/presentation/reschedule_date_screen/binding/reschedule_date_binding.dart';
import 'package:healthysense/presentation/done_rescheduled_screen/done_rescheduled_screen.dart';
import 'package:healthysense/presentation/done_rescheduled_screen/binding/done_rescheduled_binding.dart';
import 'package:healthysense/presentation/check_review_screen/check_review_screen.dart';
import 'package:healthysense/presentation/check_review_screen/binding/check_review_binding.dart';
import 'package:healthysense/presentation/write_review_screen/write_review_screen.dart';
import 'package:healthysense/presentation/write_review_screen/binding/write_review_binding.dart';
import 'package:healthysense/presentation/done_feedback_screen/done_feedback_screen.dart';
import 'package:healthysense/presentation/done_feedback_screen/binding/done_feedback_binding.dart';
import 'package:healthysense/presentation/customer_care_feedback_screen/customer_care_feedback_screen.dart';
import 'package:healthysense/presentation/customer_care_feedback_screen/binding/customer_care_feedback_binding.dart';
import 'package:healthysense/presentation/search_doctors_screen/search_doctors_screen.dart';
import 'package:healthysense/presentation/search_doctors_screen/binding/search_doctors_binding.dart';
import 'package:healthysense/presentation/filter_screen/filter_screen.dart';
import 'package:healthysense/presentation/filter_screen/binding/filter_binding.dart';
import 'package:healthysense/presentation/dr_ahmed_screen/dr_ahmed_screen.dart';
import 'package:healthysense/presentation/dr_ahmed_screen/binding/dr_ahmed_binding.dart';
import 'package:healthysense/presentation/sort_screen/sort_screen.dart';
import 'package:healthysense/presentation/sort_screen/binding/sort_binding.dart';
import 'package:healthysense/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:healthysense/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:healthysense/presentation/settings_screen/settings_screen.dart';
import 'package:healthysense/presentation/settings_screen/binding/settings_binding.dart';
import 'package:healthysense/presentation/languages_screen/languages_screen.dart';
import 'package:healthysense/presentation/languages_screen/binding/languages_binding.dart';
import 'package:healthysense/presentation/notifi_settings_screen/notifi_settings_screen.dart';
import 'package:healthysense/presentation/notifi_settings_screen/binding/notifi_settings_binding.dart';
import 'package:healthysense/presentation/view_profile_lab_screen/view_profile_lab_screen.dart';
import 'package:healthysense/presentation/view_profile_lab_screen/binding/view_profile_lab_binding.dart';
import 'package:healthysense/presentation/lab_appointment_screen/lab_appointment_screen.dart';
import 'package:healthysense/presentation/lab_appointment_screen/binding/lab_appointment_binding.dart';
import 'package:healthysense/presentation/payment_lab_screen/payment_lab_screen.dart';
import 'package:healthysense/presentation/payment_lab_screen/binding/payment_lab_binding.dart';
import 'package:healthysense/presentation/confirmed_payment_lab_screen/confirmed_payment_lab_screen.dart';
import 'package:healthysense/presentation/confirmed_payment_lab_screen/binding/confirmed_payment_lab_binding.dart';
import 'package:healthysense/presentation/medicine_screen/medicine_screen.dart';
import 'package:healthysense/presentation/medicine_screen/binding/medicine_binding.dart';
import 'package:healthysense/presentation/pharmacy_metropole_screen/pharmacy_metropole_screen.dart';
import 'package:healthysense/presentation/pharmacy_metropole_screen/binding/pharmacy_metropole_binding.dart';
import 'package:healthysense/presentation/mart_cart_screen/mart_cart_screen.dart';
import 'package:healthysense/presentation/mart_cart_screen/binding/mart_cart_binding.dart';
import 'package:healthysense/presentation/payment_mart_screen/payment_mart_screen.dart';
import 'package:healthysense/presentation/payment_mart_screen/binding/payment_mart_binding.dart';
import 'package:healthysense/presentation/confirmed_payment_mart_screen/confirmed_payment_mart_screen.dart';
import 'package:healthysense/presentation/confirmed_payment_mart_screen/binding/confirmed_payment_mart_binding.dart';
import 'package:healthysense/presentation/about_us_screen/about_us_screen.dart';
import 'package:healthysense/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:healthysense/presentation/set_location_screen/set_location_screen.dart';
import 'package:healthysense/presentation/set_location_screen/binding/set_location_binding.dart';
import 'package:healthysense/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:healthysense/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:healthysense/presentation/top_doctors_page/binding/top_doctors_page_binding.dart';
import 'package:healthysense/presentation/top_doctors_page/top_doctors_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String topDoctorsPage = '/topDoctorsPage';

  static String notifExpandedScreen = '/notif_expanded_screen';

  static String dialogScreen = '/dialog_screen';

  static String splashScreen = '/splash_screen';

  static String introOneScreen = '/intro_one_screen';

  static String introTwoScreen = '/intro_two_screen';

  static String introThreeScreen = '/intro_three_screen';

  static String signInScreen = '/sign_in_screen';

  static String signUpScreen = '/sign_up_screen';

  static String forgotPassswordScreen = '/forgot_passsword_screen';

  static String emailVerificationScreen = '/email_verification_screen';

  static String resetPasswordScreen = '/reset_password_screen';

  static String homeContainerScreen = '/home_container_screen';

  static String specialitiesScreen = '/specialities_screen';

  static String myProfileScreen = '/my_profile_screen';

  static String notificationsScreen = '/notifications_screen';

  static String menuDrawerScreen = '/menu_drawer_screen';

  static String doctorPageScreen = '/doctor_page_screen';

  static String doctorPagetwoScreen = '/doctor_pagetwo_screen';

  static String appointmentsScreen = '/appointments_screen';

  static String paymentScreen = '/payment_screen';

  static String confirmedPaymentScreen = '/confirmed_payment_screen';

  static String donePaymentScreen = '/done_payment_screen';

  static String appointmentScreen = '/appointment_screen';

  static String endvideoCallScreen = '/endvideo_call_screen';

  static String cancelAppointmentScreen = '/cancel_appointment_screen';

  static String doneCancelledScreen = '/done_cancelled_screen';

  static String rescheduleAppointmentScreen = '/reschedule_appointment_screen';

  static String rescheduleDateScreen = '/reschedule_date_screen';

  static String doneRescheduledScreen = '/done_rescheduled_screen';

  static String checkReviewScreen = '/check_review_screen';

  static String writeReviewScreen = '/write_review_screen';

  static String doneFeedbackScreen = '/done_feedback_screen';

  static String customerCareFeedbackScreen = '/customer_care_feedback_screen';

  static String searchDoctorsScreen = '/search_doctors_screen';

  static String filterScreen = '/filter_screen';

  static String drAhmedScreen = '/dr_ahmed_screen';

  static String sortScreen = '/sort_screen';

  static String editProfileScreen = '/edit_profile_screen';

  static String settingsScreen = '/settings_screen';

  static String languagesScreen = '/languages_screen';

  static String notifiSettingsScreen = '/notifi_settings_screen';

  static String viewProfileLabScreen = '/view_profile_lab_screen';

  static String labAppointmentScreen = '/lab_appointment_screen';

  static String paymentLabScreen = '/payment_lab_screen';

  static String confirmedPaymentLabScreen = '/confirmed_payment_lab_screen';

  static String medicineScreen = '/medicine_screen';

  static String pharmacyMetropoleScreen = '/pharmacy_metropole_screen';

  static String martCartScreen = '/mart_cart_screen';

  static String paymentMartScreen = '/payment_mart_screen';

  static String confirmedPaymentMartScreen = '/confirmed_payment_mart_screen';

  static String aboutUsScreen = '/about_us_screen';

  static String setLocationScreen = '/set_location_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: topDoctorsPage,
      page: () => TopDoctorsPage(),
      binding: TopDoctorsPageBinding(),
    ),
    GetPage(
      name: notifExpandedScreen,
      page: () => NotifExpandedScreen(),
      bindings: [
        NotifExpandedBinding(),
      ],
    ),
    GetPage(
      name: dialogScreen,
      page: () => DialogScreen(),
      bindings: [
        DialogBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: introOneScreen,
      page: () => IntroOneScreen(),
      bindings: [
        IntroOneBinding(),
      ],
    ),
    GetPage(
      name: introTwoScreen,
      page: () => IntroTwoScreen(),
      bindings: [
        IntroTwoBinding(),
      ],
    ),
    GetPage(
      name: introThreeScreen,
      page: () => IntroThreeScreen(),
      bindings: [
        IntroThreeBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPassswordScreen,
      page: () => ForgotPassswordScreen(),
      bindings: [
        ForgotPassswordBinding(),
      ],
    ),
    GetPage(
      name: emailVerificationScreen,
      page: () => EmailVerificationScreen(),
      bindings: [
        EmailVerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: specialitiesScreen,
      page: () => SpecialitiesScreen(),
      bindings: [
        SpecialitiesBinding(),
      ],
    ),
    GetPage(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: menuDrawerScreen,
      page: () => MenuDrawerScreen(),
      bindings: [
        MenuDrawerBinding(),
      ],
    ),
    GetPage(
      name: doctorPageScreen,
      page: () => DoctorPageScreen(),
      bindings: [
        DoctorPageBinding(),
      ],
    ),
    GetPage(
      name: doctorPagetwoScreen,
      page: () => DoctorPagetwoScreen(),
      bindings: [
        DoctorPagetwoBinding(),
      ],
    ),
    GetPage(
      name: appointmentsScreen,
      page: () => AppointmentsScreen(),
      bindings: [
        AppointmentsBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: confirmedPaymentScreen,
      page: () => ConfirmedPaymentScreen(),
      bindings: [
        ConfirmedPaymentBinding(),
      ],
    ),
    GetPage(
      name: donePaymentScreen,
      page: () => DonePaymentScreen(),
      bindings: [
        DonePaymentBinding(),
      ],
    ),
    GetPage(
      name: appointmentScreen,
      page: () => AppointmentScreen(),
      bindings: [
        AppointmentBinding(),
      ],
    ),
    GetPage(
      name: endvideoCallScreen,
      page: () => EndvideoCallScreen(),
      bindings: [
        EndvideoCallBinding(),
      ],
    ),
    GetPage(
      name: cancelAppointmentScreen,
      page: () => CancelAppointmentScreen(),
      bindings: [
        CancelAppointmentBinding(),
      ],
    ),
    GetPage(
      name: doneCancelledScreen,
      page: () => DoneCancelledScreen(),
      bindings: [
        DoneCancelledBinding(),
      ],
    ),
    GetPage(
      name: rescheduleAppointmentScreen,
      page: () => RescheduleAppointmentScreen(),
      bindings: [
        RescheduleAppointmentBinding(),
      ],
    ),
    GetPage(
      name: rescheduleDateScreen,
      page: () => RescheduleDateScreen(),
      bindings: [
        RescheduleDateBinding(),
      ],
    ),
    GetPage(
      name: doneRescheduledScreen,
      page: () => DoneRescheduledScreen(),
      bindings: [
        DoneRescheduledBinding(),
      ],
    ),
    GetPage(
      name: checkReviewScreen,
      page: () => CheckReviewScreen(),
      bindings: [
        CheckReviewBinding(),
      ],
    ),
    GetPage(
      name: writeReviewScreen,
      page: () => WriteReviewScreen(),
      bindings: [
        WriteReviewBinding(),
      ],
    ),
    GetPage(
      name: doneFeedbackScreen,
      page: () => DoneFeedbackScreen(),
      bindings: [
        DoneFeedbackBinding(),
      ],
    ),
    GetPage(
      name: customerCareFeedbackScreen,
      page: () => CustomerCareFeedbackScreen(),
      bindings: [
        CustomerCareFeedbackBinding(),
      ],
    ),
    GetPage(
      name: searchDoctorsScreen,
      page: () => SearchDoctorsScreen(),
      bindings: [
        SearchDoctorsBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: drAhmedScreen,
      page: () => DrAhmedScreen(),
      bindings: [
        DrAhmedBinding(),
      ],
    ),
    GetPage(
      name: sortScreen,
      page: () => SortScreen(),
      bindings: [
        SortBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: languagesScreen,
      page: () => LanguagesScreen(),
      bindings: [
        LanguagesBinding(),
      ],
    ),
    GetPage(
      name: notifiSettingsScreen,
      page: () => NotifiSettingsScreen(),
      bindings: [
        NotifiSettingsBinding(),
      ],
    ),
    GetPage(
      name: viewProfileLabScreen,
      page: () => ViewProfileLabScreen(),
      bindings: [
        ViewProfileLabBinding(),
      ],
    ),
    GetPage(
      name: labAppointmentScreen,
      page: () => LabAppointmentScreen(),
      bindings: [
        LabAppointmentBinding(),
      ],
    ),
    GetPage(
      name: paymentLabScreen,
      page: () => PaymentLabScreen(),
      bindings: [
        PaymentLabBinding(),
      ],
    ),
    GetPage(
      name: confirmedPaymentLabScreen,
      page: () => ConfirmedPaymentLabScreen(),
      bindings: [
        ConfirmedPaymentLabBinding(),
      ],
    ),
    GetPage(
      name: medicineScreen,
      page: () => MedicineScreen(),
      bindings: [
        MedicineBinding(),
      ],
    ),
    GetPage(
      name: pharmacyMetropoleScreen,
      page: () => PharmacyMetropoleScreen(),
      bindings: [
        PharmacyMetropoleBinding(),
      ],
    ),
    GetPage(
      name: martCartScreen,
      page: () => MartCartScreen(),
      bindings: [
        MartCartBinding(),
      ],
    ),
    GetPage(
      name: paymentMartScreen,
      page: () => PaymentMartScreen(),
      bindings: [
        PaymentMartBinding(),
      ],
    ),
    GetPage(
      name: confirmedPaymentMartScreen,
      page: () => ConfirmedPaymentMartScreen(),
      bindings: [
        ConfirmedPaymentMartBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: setLocationScreen,
      page: () => SetLocationScreen(),
      bindings: [
        SetLocationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
