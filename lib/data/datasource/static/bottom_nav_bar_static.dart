import 'package:medical_app/core/constants/app_icon_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/data/model/bottom_nav_bar_model.dart';

List<BottomNavBarModel> bottomBarList = [
  BottomNavBarModel(
    title: AppStrings.home,
    iconAssest: AppIconAssets.iconHome,
  ),
  BottomNavBarModel(
    title: AppStrings.search,
    iconAssest: AppIconAssets.iconSearch,
  ),
  BottomNavBarModel(
    title: AppStrings.order,
    iconAssest: AppIconAssets.iconOrder,
  ),
  BottomNavBarModel(
    title: AppStrings.profile,
    iconAssest: AppIconAssets.iconProfile,
  ),
];
