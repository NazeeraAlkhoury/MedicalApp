// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medical_app/core/localizations/app_strings.dart';

abstract class AddServiceProductController extends GetxController {
  onChangeType(Object? value);
  onSavedType(Object? value);
  onChangeName(Object? value);
  onSavedName(Object? value);
  isOpenListDiscount();
  bool isProduct();
  productPickImageGal();
  productPickImageCam();
  updateImageNames();

}

class AddServiceProductControllerImp extends AddServiceProductController {
  List<String> typeList = [
    AppStrings.product.tr,
    AppStrings.service.tr,
  ];
  List<String> nameList = [
    AppStrings.name1.tr,
    AppStrings.name2.tr,
    AppStrings.name3.tr,
  ];

  String? selectedType;
  String? selectedName;

  bool isOpen = false;

  final List<File> selectedImages = [];

  late TextEditingController price;
  late TextEditingController priceBeforeDiscount;
  late TextEditingController priceAfterDiscount;
  late TextEditingController about;
  late TextEditingController imageNamesController;

  @override
  void onInit() {
    price = TextEditingController();
    priceBeforeDiscount = TextEditingController();
    priceAfterDiscount = TextEditingController();
    about = TextEditingController();
    imageNamesController = TextEditingController();
    super.onInit();
  }

  @override
  onChangeType(Object? value) {
    selectedType = value as String?;
    update();
  }

  @override
  onSavedType(Object? value) {
    selectedType = value.toString();
    update();
  }

  @override
  onChangeName(Object? value) {
    selectedName = value as String?;
    update();
  }

  @override
  onSavedName(Object? value) {
    selectedName = value.toString();
    update();
  }

  @override
  isOpenListDiscount() {
    isOpen = !isOpen;
    update();
  }

  @override
  bool isProduct() {
    if (selectedType == AppStrings.product.tr) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void updateImageNames() {
    List<String> imageNames =
        selectedImages.map((image) => image.path.split('/').last).toList();
    imageNamesController.text = imageNames.join(', ');
  }

  @override
  Future<void> productPickImageGal() async {
    final ImagePicker picker = ImagePicker();
    try {
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        if (selectedImages.length < 2) {
          selectedImages.add(File(pickedImage.path));
        } else {
          selectedImages[1] = File(pickedImage.path);
        }

        updateImageNames();
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  @override
  Future<void> productPickImageCam() async {
    final ImagePicker picker = ImagePicker();
    try {
      final pickedImage = await picker.pickImage(source: ImageSource.camera);
      if (pickedImage != null) {
        if (selectedImages.length < 2) {
          selectedImages.add(File(pickedImage.path));
        } else {
          selectedImages[1] = File(pickedImage.path);
        }
        updateImageNames();
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  @override
  void dispose() {
    price.dispose();
    priceBeforeDiscount.dispose();
    priceAfterDiscount.dispose();
    about.dispose();
    imageNamesController.dispose();
    super.dispose();
  }
  
  


}
