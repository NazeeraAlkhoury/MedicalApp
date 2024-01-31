import 'package:medical_app/core/constants/app_colors.dart';

getOrderstateColor(String orderState) {
  switch (orderState) {
    case 'Delivered':
      return AppColors.greenColor;
    case 'Accepted':
      return AppColors.greenColor;
    case 'Refused':
      return AppColors.redColor;
    case 'Cancelled':
      return AppColors.redColor;
    case 'in progress':
      return AppColors.orangeAccent;
    case 'Not delivered':
      return AppColors.orangeAccent;
    case 'rejected':
      return AppColors.redColor;
  }
}
