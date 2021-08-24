import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: 300,
                width: double.infinity,
                color: Colors.lightBlueAccent,


                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      SizedBox(height:100,),
                      Padding(
                        padding: const EdgeInsets.only(right:250.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.settings, size: 20,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFe0f2f1)),
                        ),
                      ),
                      SizedBox(height:20,),
                      Padding(

                        padding: const EdgeInsets.only(right:283.0),
                        child: Text("Hi!",
                            style: TextStyle(fontSize: 16)),
                      ),
                      SizedBox(height:20,),
                      Padding(
                        padding: const EdgeInsets.only(right:150.0),
                        child: Text("Here is your \nlab Test Results ",
                            style: TextStyle(fontSize: 21)),
                      ),
                    ],
                  ),
                ),

              ),
              Container(
                height: 455,

                width: double.infinity,
                color: Colors.white,

                child: SingleChildScrollView(
                  child: Column(
                  children: [
                    SizedBox(height:50,),
                    Padding(
                      padding: const EdgeInsets.only(right:180.0),
                      child: Text("Lab Results",
                          style: TextStyle(fontSize: 21,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:30,),
                    Padding(
                      padding: const EdgeInsets.only(right:265.0),
                      child: Text("ID:",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(right:210.0),
                      child: Text("Test Type:",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)
                      ),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(right:230.0),
                      child: Text("Result: ",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(right:200.0),
                      child: Text("Lab Name:",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(right:200.0),
                      child: Text("Physician:",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(right:140.0),
                      child: Text("Reference Range: ",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(right:160.0),
                      child: Text("Data collected: ",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold)),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(right:25.0),
                      child: Container(
                        width: 250,
                        height:50,
                        alignment: Alignment.center,

                        decoration: BoxDecoration(

                          //Color c = const Color(0xFF42A5F5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          //Color myHexColor = Color(0xff123456)
                          //Color color2 = _colorFromHex("#b74093");
                        ),
                        child: Text('confirm',style: TextStyle(color: Colors.white,fontSize:15),),
                      ),
                    ),
                  ],
              ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            elevation: 0,
            child:Padding(
              padding: const EdgeInsets.only(right:25.0),

              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Have questions?",
                      style: TextStyle(color: Colors.black87)),
                  TextSpan(
                      text: "call us at 646-556-8500",
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          ),
                ),


                  :qui
                ]
              )
            )
        ),
      ),
      )
    );
  }
}
