import 'package:booking_app_demo/controllers/loading_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import 'controllers/langue_controller.dart';
import 'services/language_service.dart';
import 'controllers/theme_controller.dart';

Future<void> binding() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => LanguageService());

  Get.lazyPut(() => LanguageController(sharedPreferences: Get.find()));
  Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
  Get.lazyPut(() => LoadingController());
}
