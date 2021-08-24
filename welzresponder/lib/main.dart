import 'package:flutter/material.dart';
import 'package:welzresponder/signin.dart';
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

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,


      body:Container(


        child: Column(
          children: <Widget>[

            Image.asset('assets/welre.png',
              fit:BoxFit.cover,
             height: 580,
              width: MediaQuery.of(context).size.width,
              ),

            SizedBox(height: 20,),


            Padding(
              padding: const EdgeInsets.only(right:180.0),
              child: Text(
                'Welcome to the\nResponder app',style: TextStyle(fontSize: 20)
              ),
            ),
            SizedBox(height: 15,),
            ButtonTheme(
              minWidth: 100.0,
              height: 50.0,
              child: RaisedButton(
                child: Text(" sign in  "),
                onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Sign()),);

                  },
                color: Colors.black,
                textColor: Colors.white,
                splashColor: Colors.grey,
                padding: EdgeInsets.only(left: 130,right: 130),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
      elevation: 0,
        child:Padding(
          padding: const EdgeInsets.only(left:25.0),

          child: Text('Or  join  us a responder!',style: TextStyle(color: Colors.blue),),
        )
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
