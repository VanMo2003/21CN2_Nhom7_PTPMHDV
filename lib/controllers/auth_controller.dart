import 'dart:developer';

import 'package:get/get.dart';

import '../data/api/api_checker.dart';
import '../data/models/response/api_response.dart';
import '../data/models/response/authentication_response.dart';
import '../data/repository/authentication_repository.dart';

enum AuthenticationStatus { authentication, unAuthentication, unknown }

class AuthenticationController extends GetxController implements GetxService {
  final AuthenticationRepository authRepo;

  AuthenticationController({required this.authRepo});

  AuthenticationStatus _status = AuthenticationStatus.unAuthentication;
  AuthenticationStatus get status => _status;

  Future<int> login(String username, String password) async {
    Response response = await authRepo.login(username, password);
    ApiResponse res = ApiResponse.fromJson(response.body);

    if (response.statusCode == 200) {
      AuthenticationResponse? authentication =
          AuthenticationResponse.fromJson(res.data);

      if (authentication.token != null) {
        authRepo.saveUserToken(authentication.token);
      }
      setStatus(AuthenticationStatus.authentication);
    } else {
      ApiChecker.apiChecker(response.statusCode!);
    }

    log(response.statusCode!.toString());

    update();

    return response.statusCode!;
  }

  void setStatus(AuthenticationStatus status) {
    _status = status;
    update();
  }

  void clearData() {
    _status = AuthenticationStatus.unAuthentication;
  }
}
