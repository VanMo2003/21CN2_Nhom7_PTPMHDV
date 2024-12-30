import '../dimensions.dart';
import 'key_language.dart';

const Map<String, String> vi = {
  KeyLanguage.signIn: 'Đăng nhập',
  KeyLanguage.signUp: 'Tạo tài khoản',
  KeyLanguage.username: "Tên người dùng",
  KeyLanguage.password: 'Mật khẩu',
  KeyLanguage.validNull: 'Nhập thông tin',
  KeyLanguage.validPassword:
      'Mật khẩu phải từ ${DimensionUtils.MIN_LENGTH_PASSWORD} đến ${DimensionUtils.MAX_LENGTH_PASSWORD} ký tự',
  KeyLanguage.questionSignUp: "Bạn chưa có tài khoản?",
  KeyLanguage.errorSystem: 'Lỗi hệ thống',
  KeyLanguage.errorUnauthentication: 'Bạn không có quyền truy cập',
  KeyLanguage.errorWrongUsernameOrPassword:
      'Tài khoản hoặc mật khẩu không chính xác',
};
