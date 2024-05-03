import 'package:dashboardtest/main/environment/environmentModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/app_constant.dart';
import '../../helper/locator.dart';

class Envconfig {
  static Future<void> initialize() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    //Resgistering environmentmodel to the app
    locator.registerLazySingleton(
      () => EnvironmentModel(
          uuid: sharedPreferences.getString(uuidKey),
          name: sharedPreferences.getString(nameKey),
          username: sharedPreferences.getString(usernameKey),
          profileImage: sharedPreferences.getString(profileImageKey),
          coverImage: sharedPreferences.getString(coverImageKey),
          bio: sharedPreferences.getString(bioKey),
          email: sharedPreferences.getString(emailKey),
          phoneNumber: sharedPreferences.getString(phoneNumberKey),
          token: sharedPreferences.getString(tokenKey),
          role: sharedPreferences.getString(roleKey),
          baseUrl: (sharedPreferences.getBool(isLiveKey) ?? true)
              ? liveUrl
              : testUrl),
    );
  }
}
