import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weathe_app/view/home_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // تحديد مدة الصفحة الافتتاحية
    Timer(const Duration(seconds: 5), () {
      // الانتقال إلى الصفحة الرئيسية بعد انتهاء الصفحة الافتتاحية
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>const HomeView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // يمكنك استبدال هذا النص بشعار التطبيق
            Icon(Icons.cloud, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              'Welcome to WeatherApp',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
