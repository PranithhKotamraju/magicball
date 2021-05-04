import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Text(
              "Ask me Anything",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            backgroundColor: Colors.indigo,
          ),
          body: Ball(),
        ),

      ),
    );

class Ball extends StatefulWidget {


  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int change =1;
  @override
  Widget build(BuildContext context) {
    return Container(

     // ignore: deprecated_member_use
     child: Center(child: GestureDetector(
         onTap: (){
           setState(() {
             random();
           });

         },
       child: FlatButton(child: Image.asset('images/ball$change.png')),
     )),


    );
  }
  void random(){

    change = Random().nextInt(5)+1;
  }

}
