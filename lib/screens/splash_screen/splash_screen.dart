import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/route_helper.dart';
import '../../utils/assets_utils.dart';
import '../../utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _route();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.8,
            fit: BoxFit.cover,
            image: AssetImage(
              AssetsUtils.background,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: TweenAnimationBuilder<double>(
          duration: const Duration(milliseconds: DimensionUtils.TIME_SPLASH),
          tween: Tween<double>(begin: -1, end: 1),
          builder: (context, value, child) {
            return Transform.translate(
              offset: const Offset(0, 0),
              child: Transform.scale(
                scale: value < 0 ? 0 : value,
                child: Image.asset(
                  width: DimensionUtils.ICON_SIZE_SPLASH,
                  AssetsUtils.logoBooking,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future _route() async {
    Future.delayed(
      const Duration(milliseconds: DimensionUtils.TIME_SPLASH),
      () {
        Get.offAllNamed(RouteHelper.init);
      },
    );
  }
}
