import 'package:flutter/material.dart';

logoWidget(){
  return ListTile(
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
  );
}