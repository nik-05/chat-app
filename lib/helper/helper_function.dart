import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {

  // keys
  static String userLoggedInKey = 'LoggedInKey';
  static String userNameKey = "UserNameKey";
  static String userEmailKey = "UserEmailKey";

  // saving the data to SF

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }

  // getting the data from SF

}