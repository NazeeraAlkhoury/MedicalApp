import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

getUserTypeColor(String type) {
  switch (type) {
    case AppStrings.patient:
      return AppColors.greenColor;
    case AppStrings.serviceProvider:
      return AppColors.orangeAccent;
  }
}
