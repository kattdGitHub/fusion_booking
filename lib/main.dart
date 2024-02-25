import 'package:flutter/material.dart';
import 'package:fusion_booking/Savebth/savebtn.dart';
import 'package:fusion_booking/Theme/theme.dart';
import 'package:fusion_booking/app_config/app_config.dart';
import 'package:fusion_booking/dashboard/Dashboard.dart';
import 'package:fusion_booking/screens/auth_screens/login_screen.dart';
import 'package:fusion_booking/screens/auth_screens/splash.dart';
import 'package:fusion_booking/screens/home/restaurant_home_page.dart';
import 'package:fusion_booking/screens/home/slider_card.dart';

import 'Restaurant/restaurant.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return ScreenUtilInit(
      designSize: const Size(
        360,
        690,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiProvider(
          providers: [],
          child: MaterialApp(
            title: "Fusion",
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: MyTheme.lightTheme(context),
            darkTheme: MyTheme.darkTheme(context),
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}
