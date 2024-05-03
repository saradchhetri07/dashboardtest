import 'package:dashboardtest/main/environment/environmentModel.dart';

import '../helper/locator.dart';

class ApiRepository {
  String? get token => locator<EnvironmentModel>().token;
}
