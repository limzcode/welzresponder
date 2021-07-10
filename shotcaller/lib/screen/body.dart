import 'package:flutter/material.dart';
import 'package:shotcaller/shared/colors.dart';
import 'waitlist.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor1,
      body: SingleChildScrollView(
        child: Container(
          color: ThemeColor1,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              ListTile(
                title: Text('powerer by',
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                subtitle: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Shot",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 53,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Caller",
                        style: TextStyle(
                            color: Color(0xffB8B8B8),
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text("OTP Verification",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "We sent OTP  code to verify your \nnumber",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OtpForm(),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Didn't receive OTP? ",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          children: [
                            TextSpan(
                                text: "RESEND",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Waitlist()));
                      },
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFF0000),
                                Color(0xffFF0000),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            'verify & continue',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 140,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
