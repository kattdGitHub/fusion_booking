import 'package:flutter/material.dart';
import 'package:fusion_booking/screens/home/location.dart';
import 'package:fusion_booking/utils/navigator.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Verification ",
                style: const TextStyle(
                  fontFamily: "Jost",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  height: 29 / 20,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Please Enter the 4-digit Verification Code Sent to johnsmith@gmail.com",
                  style: const TextStyle(
                    fontFamily: "Jost",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 46 / 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.0),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Jost",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff777777),
                            height: 17 / 12,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                '(35 Sec)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8E8E8E),
                  fontSize: 14,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t receive OTP?",
                    style: const TextStyle(
                      fontFamily: "Jost",
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff777777),
                      height: 20 / 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  InkWell(
                      onTap: () {
                        pushTo(context, Locationview());
                      },
                      child: const Text(
                        "Resend",
                        style: TextStyle(
                          fontFamily: "Jost",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffbd8d46),
                          height: 26 / 18,
                        ),
                        textAlign: TextAlign.left,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
