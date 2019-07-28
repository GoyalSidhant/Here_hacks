import 'package:flutter/material.dart';

class Driver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DDriveFin(),
    );
  }
}

class DDriveFin extends StatefulWidget {
  @override
  _DDriveFinState createState() => _DDriveFinState();
}

class _DDriveFinState extends State<DDriveFin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: new Stack(
       fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/ddr1.jpg"),
            fit: BoxFit.fitWidth,
          ),
          new Padding(
            padding: EdgeInsets.only(top:30),
          ),
          // new MaterialButton(
          //   minWidth: 300,
          //   height: 100,
          //   onPressed: (){},
          //   child: Text("Alert Sent !!"),
          //   color:  Colors.redAccent,
          //   textColor: Colors.white,
          // )
        ]
       )
    );
  }
}