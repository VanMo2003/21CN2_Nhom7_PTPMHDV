import 'package:get/get.dart';

import '../screens/sign_in/sign_in_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

class RouteHelper {
  static const String splash = "/splash";
  static const String signIn = "/sign-in";

  static String getSplashRoute() => splash;
  static String getSignInRoute() => signIn;

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: signIn, page: () => SignInScreen()),
  ];
}
