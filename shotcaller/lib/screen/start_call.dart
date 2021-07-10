import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shotcaller/shared/colors.dart';
import 'package:shotcaller/slider/sliderbutton.dart';
import 'admin_call.dart';
import 'file:///C:/Users/ADMIN/Downloads/tiktok-clone-main/shotcaller/lib/widgets/common_widgets.dart';
import 'dart:math' as math;

class StartCall extends StatefulWidget {
  @override
  _StartCallState createState() => _StartCallState();
}

class _StartCallState extends State<StartCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor1,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    logoWidget(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Anna williams",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: "InterExtraBold"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    CircularPercentIndicator(
                      radius: 180.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 20.0,
                      percent: 0.5,
                      center: new Text(
                        "Soul Session",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.orange),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.yellow,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff353336),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '0.00',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                Text(
                                  'Time used',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RotationTransition(
                                turns: new AlwaysStoppedAnimation(15 / 360),
                                child: Container(
                                    height: 40,
                                    margin: const EdgeInsets.only(bottom: 20.0),
                                    child: VerticalDivider(
                                        thickness: 4, color: Colors.white))),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  '4:00',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                Text(
                                  'Total time',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: SliderButton(


                            action: (

                                ) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Adminmoredetails()));
                            },
                            alignKnob:Alignment.centerLeft,
                            ///Put label over here
                            label: Text(
                              "Slide to end  the call call",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            icon: Center(
                                child: Icon(
                                  Icons.call_end,
                                  color: Colors.white,
                                  size: 20.0,
                                  semanticLabel:
                                  'Text to announce in accessibility modes',
                                )),

                            //Put BoxShadow here
                            boxShadow: BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,
                            ),

                            //Adjust effects such as shimmer and flag vibration here
                            // shimmer: true,
                            // vibrationFlag: true,

                            ///Change All the color and size from here.
                            width:230,
                            // height: 80,
                            radius: 40,

                            buttonColor: Colors.red,
                            backgroundColor: ThemeColor1,
                            highlightedColor: Colors.white,
                            // shimmer: false,

                            baseColor: Colors.red,
                            //dismissible: false,
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
