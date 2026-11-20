import 'package:facebook/screens/color_app.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'login_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/app_logo.png'),
              ),
            ),
            SizedBox(
              height: 70,
              width: 100,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(
                      color: ColorApp.gray,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/images/meta_logo.png'),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
