
import 'package:flutter/material.dart';
import 'package:shotcaller/shared/colors.dart';
import '../shared/size_config.dart';
import 'body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/OtpForm";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ThemeColor1,
      body: Body(),
    );
  }
}