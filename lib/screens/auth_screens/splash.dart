import 'package:flutter/material.dart';
import 'package:fusion_booking/screens/auth_screens/login_screen.dart';
import 'package:fusion_booking/utils/font_faimly.dart';
import 'package:fusion_booking/utils/navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        pushTo(context, const LoginScreen());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  image: AssetImage("assets/image/Reserva logo 2 1.png")),
            ),
            Text(
              " Your Table, Our Pleasure!",
              style: TextStyle(
                color: Color(0xFF1B1B1B),
                fontSize: 29.74,
                fontFamily: AppFont.yellowtailRegular,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
