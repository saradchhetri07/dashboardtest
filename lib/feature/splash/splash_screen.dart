import 'package:dashboardtest/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  final Color BackgroundColor;

  const SplashScreen({Key? key, this.BackgroundColor = Colors.white});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogInStatus();
  }

  checkLogInStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //todo-check for web status

    var token = sharedPreferences.getString(tokenKey);
    if (token != null) {
      var role = sharedPreferences.getString(roleKey);
      Future.delayed(
          const Duration(milliseconds: 500),
          () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) =>
                  RoleScreen(role: role ?? ''))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 150.0,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/images/ug_staff.png')),
            const Text(
              'Welcome to UG',
              style: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
