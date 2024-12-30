import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import '../../utils/app_constant.dart';
import '../api/api_client.dart';
import '../models/body/authentication.dart';

class AuthenticationRepository {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthenticationRepository(
      {required this.apiClient, required this.sharedPreferences});

  Future<Response> login(String username, String password) async {
    return await apiClient.postDataNoAuth(
      AppConstant.ENDPOINT_LOGIN,
      body: Authentication(
        username: username,
        password: password,
      ),
    );
  }

  Future<bool> saveUserToken(String? token) async {
    apiClient.token = "$token";
    apiClient.updateAuthHeader("$token");
    return await sharedPreferences.setString(AppConstant.TOKEN, "$token");
  }
}
