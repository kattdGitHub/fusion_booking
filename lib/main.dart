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

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    AppConfig.init(context);
    return  MaterialApp(
      title: "Rserva",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
     theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home:const MyHomePage(),
    );
  }
}
