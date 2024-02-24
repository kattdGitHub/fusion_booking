import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fusion_booking/Password/Forgot_Password.dart';
import 'package:fusion_booking/Restaurant/restaurant.dart';
import 'package:fusion_booking/app_config/app_config.dart';
import 'package:fusion_booking/dashboard/Dashboard.dart';
import 'package:fusion_booking/screens/auth_screens/splash.dart';
import 'package:fusion_booking/screens/home/Choose_a_Restaurant.dart';
import 'package:fusion_booking/screens/home/restaurant_home_page.dart';
import 'package:fusion_booking/screens/sign_up.dart';
import 'package:fusion_booking/utils/app_btn.dart';
import 'package:fusion_booking/utils/navigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed:() {

                    }, 
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontFamily: "Jost",
                          fontSize: 18.88669776916504,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff474747),
                          height: 27 / 18.88669776916504,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontFamily: "Jost",
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0c0c0c),
                        height: 43 / 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Image(image: AssetImage("assets/image/waving-hand 1.png"))
                  ],
                ),
                const Text(
                  "Please sign in to continue. ",
                  style: TextStyle(
                    fontFamily: "Jost",
                    fontSize: 16.788175582885742,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff777777),
                    height: 24 / 16.788175582885742,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Email or Phone Number",
                  style: TextStyle(
                    fontFamily: "Jost",
                    fontSize: 14.689654350280762,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff777777),
                    height: 21 / 14.689654350280762,
                  ),
                  textAlign: TextAlign.left,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: "Jost",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff777777),
                    height: 20 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
                const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.eye_slash),
                    border: OutlineInputBorder(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        pushTo(context, ForgotPassword());
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: "Jost",
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff777777),
                          height: 19 / 13,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                AppBtn(

                  style: TextStyle(color: Colors.white),
                  title: 'Login',
                  onPressed: () {
                    pushTo(context,ChooseRestaurant());
                  },
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: "Don’t have an account? ",
                  children: [
                    WidgetSpan(
                        child: InkWell(
                      onTap: () {
                        pushTo(context, SignUp());
                      },
                      child: const Text(
                        "Register ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.systemBlue),
                      ),
                    )),
                    // TextSpan(
                    //   text: "Register",
                    //   recognizer: TapGestureRecognizer()..onTap = () {},
                    //   style: TextStyle(
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.bold,
                    //       color: CupertinoColors.systemBlue),
                    // ) ,
                  ],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
