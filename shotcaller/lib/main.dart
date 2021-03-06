
import 'package:flutter/material.dart';
import 'package:shotcaller/screen/phone_number.dart';
import 'package:shotcaller/screen/start_call.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PhoneNumber(),
    );
  }
}
