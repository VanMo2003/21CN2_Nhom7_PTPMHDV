import 'package:get/get.dart';

import '../screens/splash_screen/splash_screen.dart';

class RouteHelper {
  static const String splash = "/splash";

  static String getSplashRoute() => splash;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
  ];
}
