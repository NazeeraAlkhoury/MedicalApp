import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/core/localizations/app_strings.dart';
import 'package:medical_app/data/model/order_model.dart';

List<OrderModel> orderCanceledList = [
  OrderModel(
    id: '1',
    name: 'Home Massage',
    type: 'Service',
    price: 400,
    newPrice: 387,
    image: AppImageAssets.pHome2,
    state: AppStrings.cancelled,
  ),
  OrderModel(
    id: '4',
    name: 'Shampo',
    type: 'product',
    price: 66,
    image: AppImageAssets.pHome4,
    state: AppStrings.cancelled,
  ),
];
