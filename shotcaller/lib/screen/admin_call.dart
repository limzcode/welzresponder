import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shotcaller/slider/sliderbutton.dart';
import 'admin.dart';
import 'package:shotcaller/shared/colors.dart';
import 'file:///C:/Users/ADMIN/Downloads/tiktok-clone-main/shotcaller/lib/widgets/common_widgets.dart';



class Adminmoredetails extends StatefulWidget {
  @override
  _AdminmoredetailsState createState() => _AdminmoredetailsState();
}

class _AdminmoredetailsState extends State<Adminmoredetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          child : Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      logoWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Raw intellect",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: "InterExtraBold"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CircularPercentIndicator(
                        radius: 180.0,
                        animation: true,
                        animationDuration: 1200,
                        lineWidth: 20.0,
                        percent: 0.8,
                        center: new Text(
                          "Soul Session",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.green),
                        ),
                        circularStrokeCap: CircularStrokeCap.butt,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.green,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff353336),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                '0.13',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,fontSize: 40),
                              ),
                              Text(
                                'Time used',
                                style: TextStyle(
                                    color: Colors.green,
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
                                    fontWeight: FontWeight.bold,fontSize: 40),
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

                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: [
                              InkWell(

                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        border: Border.all(
                                            width: 1.0,
                                            color: Colors.white
                                        )),
                                      child: Icon(CupertinoIcons.speaker_slash_fill,color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('mute',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                        width: 1.0,
                                        color: Colors.white
                                    )),
                                child: Icon(CupertinoIcons.mic_fill,color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Record',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.white
                                  )
                                ),
                                child: Icon(CupertinoIcons.speaker_3,color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Speaker',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13)),
                            ],
                          ),
                        ],
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
                                      builder: (context) => Admin()));
                            },

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

                            alignKnob:Alignment.centerRight,
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
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}






