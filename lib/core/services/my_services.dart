import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  String? sharedPrefLangCode;
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    // sharedPrefLangCode = sharedPreferences.getString('langCode');
    // print(sharedPrefLangCode);
    return this;
  }
}

Future initServices() async {
  await Get.putAsync(() => MyServices().init());
}
