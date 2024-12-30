import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/app_constant.dart';
import '../api/api_client.dart';

class UserRepository {
  UserRepository({
    required this.apiClient,
    required this.sharedPreferences,
  });

  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  Future<Response> getMyInfo() async {
    return await apiClient.getData(AppConstant.ENDPOINT_GET_MY_INFO);
  }

  String? getUserToken() {
    return sharedPreferences.getString(AppConstant.TOKEN);
  }
}
