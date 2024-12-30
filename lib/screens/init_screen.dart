import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import 'manage_screen.dart';
import 'sign_in/sign_in_screen.dart';
import 'unknown_screen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthenticationController>(
      builder: (controller) {
        log("authentication controller");
        switch (controller.status) {
          case AuthenticationStatus.authentication:
            return const ManageScreen();
          case AuthenticationStatus.unAuthentication:
            return SignInScreen();
          default:
            return const UnknownScreen();
        }
      },
    );
  }
}
