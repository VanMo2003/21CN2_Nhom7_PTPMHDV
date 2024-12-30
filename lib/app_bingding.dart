import 'package:booking_app_demo/controllers/loading_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import 'controllers/auth_controller.dart';
import 'controllers/langue_controller.dart';
import 'controllers/user_controller.dart';
import 'data/api/api_client.dart';
import 'data/repository/authentication_repository.dart';
import 'data/repository/user_repository.dart';
import 'services/language_service.dart';
import 'controllers/theme_controller.dart';
import 'utils/app_constant.dart';

Future<void> binding() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => LanguageService());
  Get.lazyPut(() =>
      ApiClient(urlBase: AppConstant.URL_BASE, sharedPreferences: Get.find()));

  Get.lazyPut(() => AuthenticationRepository(
      apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() =>
      UserRepository(apiClient: Get.find(), sharedPreferences: Get.find()));

  Get.lazyPut(() => LanguageController(sharedPreferences: Get.find()));
  Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
  Get.lazyPut(() => LoadingController());
  Get.lazyPut(() => AuthenticationController(authRepo: Get.find()));
  Get.lazyPut(() => UserController(userRepo: Get.find()));
}
