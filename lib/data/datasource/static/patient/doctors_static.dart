import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/data/model/patient/doctors_model.dart';

List<DoctorsModel> doctorsList = [
  DoctorsModel(
      text: AppStrings.dentist, imageAssets: AppImageAssets.imageDentist),
  DoctorsModel(
      text: AppStrings.optics, imageAssets: AppImageAssets.imageoptics),
  DoctorsModel(text: AppStrings.xRay.tr, imageAssets: AppImageAssets.imagexray),
  DoctorsModel(
      text: AppStrings.facelift, imageAssets: AppImageAssets.imagefacelift),
  DoctorsModel(
      text: AppStrings.dietitian, imageAssets: AppImageAssets.imagedietitian),
  DoctorsModel(
      text: AppStrings.homeNurse, imageAssets: AppImageAssets.imagehomenurse),
];
