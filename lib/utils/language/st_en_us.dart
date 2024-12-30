import '../dimensions.dart';
import 'key_language.dart';

const Map<String, String> en = {
  KeyLanguage.signIn: 'Sign In',
  KeyLanguage.signUp: 'Create New Account',
  KeyLanguage.username: "Username",
  KeyLanguage.password: 'Password',
  KeyLanguage.validNull: 'Enter information',
  KeyLanguage.validPassword:
      'Password must be between ${DimensionUtils.MIN_LENGTH_PASSWORD} and ${DimensionUtils.MAX_LENGTH_PASSWORD} characters long',
  KeyLanguage.questionSignUp: "Don't have an account?",
  KeyLanguage.errorSystem: 'System error',
  KeyLanguage.errorUnauthentication: r"You don't have access",
  KeyLanguage.errorWrongUsernameOrPassword: 'Account or password is incorrect',
};
