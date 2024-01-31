import 'package:get/get.dart';
import 'package:medical_app/binding/my_binding.dart';
import 'package:medical_app/core/constants/app_routes.dart';
import 'package:medical_app/view/screens/admin/add_supervisor_screen.dart';
import 'package:medical_app/view/screens/admin/admin_home_screen.dart';
import 'package:medical_app/view/screens/admin/manage_reservations_review_screen.dart';
import 'package:medical_app/view/screens/admin/manage_reservations_screen.dart';
import 'package:medical_app/view/screens/admin/manage_supervisors_screen.dart';
import 'package:medical_app/view/screens/admin/registaration_requests_screen.dart';
import 'package:medical_app/view/screens/admin/review_registration_requests_screen.dart';
import 'package:medical_app/view/screens/admin/review_user_manag_patient_screen.dart';
import 'package:medical_app/view/screens/admin/review_user_manag_sp_screen.dart';
import 'package:medical_app/view/screens/admin/sales_report_screen.dart';
import 'package:medical_app/view/screens/admin/service_managment_review_screen.dart';
import 'package:medical_app/view/screens/admin/service_managment_screen.dart';
import 'package:medical_app/view/screens/admin/user_managment_screen.dart';
import 'package:medical_app/view/screens/admin/validity_screen.dart';
import 'package:medical_app/view/screens/auth/patient_auth/account_confirmation_screen.dart';
import 'package:medical_app/view/screens/auth/services_provider_auth/service_provider_login_screen.dart';

import 'package:medical_app/view/screens/error_screen.dart';
import 'package:medical_app/view/screens/auth/patient_auth/login_screen.dart';
import 'package:medical_app/view/screens/auth/patient_auth/patient_edits_screen.dart';
import 'package:medical_app/view/screens/auth/patient_auth/patient_information_screen.dart';
import 'package:medical_app/view/screens/auth/patient_auth/patient_profile_screen.dart';

import 'package:medical_app/view/screens/auth/register_screen.dart';
import 'package:medical_app/view/screens/auth/services_provider_auth/services_provider_edits_screen.dart';

import 'package:medical_app/view/screens/auth/services_provider_auth/services_provider_information_screen.dart';
import 'package:medical_app/view/screens/auth/services_provider_auth/services_provider_profile_screen.dart';
import 'package:medical_app/view/screens/auth/services_provider_auth/services_provider_register_screen.dart';
import 'package:medical_app/view/screens/patient/patient_layout_screen.dart';
import 'package:medical_app/view/screens/patient/patient_orders_screen.dart';
import 'package:medical_app/view/screens/patient/patient_home_screen.dart';
import 'package:medical_app/view/screens/patient/patient_order_tracking_screen.dart';
import 'package:medical_app/view/screens/patient/patient_personal_detailes.dart';
import 'package:medical_app/view/screens/patient/patient_product_reviews_screen.dart';
import 'package:medical_app/view/screens/patient/patient_profile_bar_screen.dart';
import 'package:medical_app/view/screens/patient/patient_search_screen.dart';
import 'package:medical_app/view/screens/patient/patient_reservation_screen.dart';
import 'package:medical_app/view/screens/patient/patient_your_location_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_layout_screen.dart';
import 'package:medical_app/view/screens/service_provider/sp_reson_of_refused_screen.dart';
import 'package:medical_app/view/screens/success_screen.dart';

import 'package:medical_app/view/screens/program_screen.dart';

List<GetPage<dynamic>>? pages = [
  //program
  GetPage(name: AppRoutes.programRoute, page: (() => const ProgramScreen())),
  //auth
  GetPage(name: AppRoutes.loginRoute, page: (() => const LoginScreen())),
  GetPage(name: AppRoutes.spLoginRoute, page: (() => const SPLoginScreen())),
  GetPage(name: AppRoutes.registerRoute, page: (() => const RegisterScreen())),

  ////authpatient
  GetPage(
      name: AppRoutes.patientInformationRoute,
      page: (() => const PatientInformationScreen())),
  GetPage(
      name: AppRoutes.accountConfirmationRoute,
      page: (() => const AccountConfirmationScreen())),
  GetPage(
      name: AppRoutes.patientProfileRoute,
      page: (() => const PatientProfileScreen())),
  GetPage(
      name: AppRoutes.patientEditsRoute,
      page: (() => const PatientEditsScreen())),

  ////authservicesprovider
  GetPage(
      name: AppRoutes.servicesProviderInforRoute,
      page: (() => const ServicesProviderInformationScreen())),
  GetPage(
      name: AppRoutes.servicesProviderRegisterRoute,
      page: (() => const ServicesProviderRegisterScreen())),
  GetPage(
      name: AppRoutes.servicesProviderEditsRoute,
      page: (() => const ServicesProviderEditsScreen())),
  GetPage(
      name: AppRoutes.servicesProviderProfileRoute,
      page: (() => const ServicesProviderProfileScreen())),

  //Success Error
  GetPage(name: AppRoutes.successRoute, page: (() => const SuccessScreen())),
  GetPage(name: AppRoutes.errorRoute, page: (() => const ErrorScreen())),

  //PatientSection
  GetPage(
    name: AppRoutes.patientlayoutRoute,
    page: (() => const PatientLayoutScreen()),
    binding: MyBinding(),
  ),
  GetPage(
      name: AppRoutes.patientHomeRoute,
      page: (() => const PatientHomeScreen())),
  GetPage(
      name: AppRoutes.patientSearchRoute,
      page: (() => const PatientSearchScreen())),
  GetPage(
      name: AppRoutes.patientOrderRoute,
      page: (() => const PatientOrdersScreen())),
  GetPage(
      name: AppRoutes.patientProfileBarRoute,
      page: (() => const PatientProfileBarScreen())),
  GetPage(
      name: AppRoutes.patientProductReviewRoute,
      page: (() => const PatientProductReviewsScreen())),
  GetPage(
      name: AppRoutes.patientReservationRoute,
      page: (() => const PatientReservationScreen())),
  GetPage(
      name: AppRoutes.patientorderTrackingRoute,
      page: (() => const PatientOrderTrackingScreen())),
  GetPage(
      name: AppRoutes.patientYourLocationRoute,
      page: (() => const PatientYourLocationScreen())),
  GetPage(
      name: AppRoutes.patientPersonalDetailesRoute,
      page: (() => const PatientPersonalDetailes())),

  //service provider
  GetPage(
    name: AppRoutes.spLayoutRoute,
    page: (() => const SpLayoutScreen()),
    binding: MyBinding(),
  ),
  GetPage(
      name: AppRoutes.spReasonRefusedRoute,
      page: (() => const SpReasonRefusedScreen())),

  //Admin
  GetPage(
      name: AppRoutes.adminHomeRoute, page: (() => const AdminHomeScreen())),
  GetPage(
      name: AppRoutes.userManagmentRoute,
      page: (() => const UserManagmentScreen())),

  GetPage(
      name: AppRoutes.reviewUserManagmentPRoute,
      page: (() => const ReviewUserManagPScreen())),
  GetPage(
      name: AppRoutes.reviewUserManagmentSPRoute,
      page: (() => const ReviewUserManagSpScreen())),
  GetPage(
      name: AppRoutes.registrationRequestsRoute,
      page: (() => const RegistrationRequestsScreen())),
  GetPage(
      name: AppRoutes.reviewRegistrationRequestsRoute,
      page: (() => const ReviewRegisterationRequestsScreen())),
  GetPage(
      name: AppRoutes.manageSupervisorsRoute,
      page: (() => const ManageSupervisorsScreen())),
  GetPage(name: AppRoutes.validityRoute, page: (() => const ValidityScreen())),
  GetPage(
      name: AppRoutes.addSupervisorRoute,
      page: (() => const AddSupervisorScreen())),
  GetPage(
      name: AppRoutes.salesReportRoute,
      page: (() => const SalesReportScreen())),
  GetPage(
      name: AppRoutes.serviceManagmentRoute,
      page: (() => const ServiceManagmentScreen())),
  GetPage(
      name: AppRoutes.serviceManagmentReviewRoute,
      page: (() => const ServiceManagmentReviewScreen())),
  GetPage(
      name: AppRoutes.manageReservationRoute,
      page: (() => const ManageReservationScreen())),
  GetPage(
      name: AppRoutes.manageReservationReviewRoute,
      page: (() => const ManageReservationReviewScreen())),
];
