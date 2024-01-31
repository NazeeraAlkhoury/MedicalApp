import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/data/model/admin/user_model.dart';

List<UserModel> usersList = const [
  UserModel(
      image: AppImageAssets.profile,
      name: 'Nazeera Alkhouri',
      email: 'NazeeraAlkhouri@gmail.com',
      type: AppStrings.patient),
  UserModel(
      image: AppImageAssets.profile,
      name: 'Nazeera Alkhouri',
      email: 'NazeeraAlkhouri@gmail.com',
      type: AppStrings.serviceProvider),
  UserModel(
      image: AppImageAssets.profile,
      name: 'Nazeera Alkhouri',
      email: 'NazeeraAlkhouri@gmail.com',
      type: AppStrings.serviceProvider),
  UserModel(
      image: AppImageAssets.profile,
      name: 'Nazeera Alkhouri',
      email: 'NazeeraAlkhouri@gmail.com',
      type: AppStrings.patient),
];
