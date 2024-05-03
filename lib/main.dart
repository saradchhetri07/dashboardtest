import 'package:dashboardtest/config/theme.dart';
import 'package:dashboardtest/helper/locator.dart';
import 'package:dashboardtest/helper/route_helper.dart';
import 'package:dashboardtest/helper/router.dart';
import 'package:dashboardtest/main/environment/envConfig.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  setLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Envconfig.initialize();

  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: Colors.black,
      builder: (context, child) => UGDashboard(),
    );
  }
}

class UGDashboard extends StatefulWidget {
  const UGDashboard({super.key});

  @override
  State<UGDashboard> createState() => _UGDashboardState();
}

class _UGDashboardState extends State<UGDashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: lightTheme(context),
      initialRoute: '/',
      onGenerateRoute: generateRotue,
    );
  }
}
