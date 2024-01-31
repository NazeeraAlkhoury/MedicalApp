import 'package:medical_app/core/constants/app_image_assets.dart';
import 'package:medical_app/data/model/patient/product_services_model.dart';

List<ProductServicesModel> productServiceList = [
  ProductServicesModel(
    id: 1,
    name: 'Working Women’s Health Checkup',
    age: 'Ideal for individuals aged 21-40 years',
    type: 'Service',
    price: 345,
    image: AppImageAssets.pHome1,
  ),
  ProductServicesModel(
    id: 2,
    name: 'Home Massage',
    age: 'Ideal for individuals aged 21-40 years',
    type: 'Service',
    price: 400,
    newPrice: 387,
    image: AppImageAssets.pHome2,
  ),
  ProductServicesModel(
    id: 3,
    name: 'Cream',
    age: 'Suitable for all ages',
    type: 'product',
    price: 80,
    image: AppImageAssets.pHome3,
  ),
  ProductServicesModel(
    id: 4,
    name: 'Shampo',
    age: 'Suitable for all ages',
    type: 'product',
    price: 66,
    image: AppImageAssets.pHome4,
  ),
];
