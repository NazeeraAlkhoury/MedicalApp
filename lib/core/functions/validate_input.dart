import 'package:get/get.dart';

validateInput(String val, int min, int max, String type) {
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone";
    }
  }

  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
  if (type == "firstname") {
    if (!GetUtils.isUsername(val)) {
      return "not valid first name";
    }
  }
  if (type == "lastname") {
    if (!GetUtils.isUsername(val)) {
      return "not valid last name";
    }
  }
  if (type == "number") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid number";
    }
  }

  if (type == "pdfFile") {
    if (!GetUtils.isPDF(val)) {
      return "not valid PDF file";
    }
  }

  if (val.isEmpty) {
    return "can't be Empty";
  }

  if (val.length < min) {
    return "can't be less than $min";
  }

  if (val.length > max) {
    return "can't be larger than $max";
  }
}
