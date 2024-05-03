import 'package:get_it/get_it.dart';

import 'size_config.dart';

GetIt locator = GetIt.instance;

void setLocator() {
  //*Singleton classes
  //?App Helpers
  locator.registerLazySingleton(() => SizeConfig());
}
