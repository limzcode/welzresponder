 import 'package:flutter/material.dart';
import 'package:welzresponder/home.dart';


class Sign extends StatefulWidget {



  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(

        leadingWidth: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),

      ),


      body:Container(

        margin: EdgeInsets.only(left: 20,right: 20),

        child: Center(

          child: Column(

            children: <Widget>[


              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left:10),
                  child: Text(
                    "please sign in",
                    style: TextStyle(
                        fontSize: 21,
                        color: Color(0XFF3B405B),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 40,),
              TextField(

                autofocus: true,

                decoration: new InputDecoration(
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(15),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),

                    ),
                    filled: true,

                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Email Address",
                    fillColor: Colors.white70),

              ),
              SizedBox(height: 20,),
              TextField(
                decoration: new InputDecoration(
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(15),  // Added this
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),

                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "password",
                    fillColor: Colors.white70),

              ),
              SizedBox(height: 100,),




                Row(
                  children: [
                    GestureDetector(child: Text(' I forgot my password',style: TextStyle(color: Colors.blue),)),
                    SizedBox(width:80,),
                    GestureDetector(
                        onTap: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home()),);
                        },
                      child: Container(
                        width: 100,
                        height: 50,
                        alignment: Alignment.center,

                        decoration: BoxDecoration(

                          //Color c = const Color(0xFF42A5F5),
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.green,
                          //Color myHexColor = Color(0xff123456)
                          //Color color2 = _colorFromHex("#b74093");
                        ),
                        child: Text('sign in',style: TextStyle(color: Colors.white,fontSize:15),),
                      ),
                    ),
                  ],
                ),


            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
