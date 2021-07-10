import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shotcaller/shared/colors.dart';

import 'otpdart.dart';

class PhoneNumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhoneNumberState();
  }
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor1,
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: ListTile(
                      title: Text('powerer by',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      subtitle: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Shot",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 50,
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
                  ),
                  SizedBox(height: 160,),

                  Text("Mobile number",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: "InterExtraBold")),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter mobile number and login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 55,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white38,  // red as border color
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color:  Color(0xff5c5d62),
                     ),
                    child: TextField(
                      decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: '+1 1234567890',
                        hintStyle:
                            TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 55,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffF22424),
                              Color(0xffF22424),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          'Generate OTP'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
