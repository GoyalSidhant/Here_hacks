import 'package:flutter/material.dart';
import 'dd1.dart';
import 'ff1.dart';
class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: new RouteDisplay(),
       theme: new ThemeData(
        primarySwatch: Colors.deepPurple ,
      ),
    );
  }
}

class RouteDisplay extends StatefulWidget {
  @override
  _RouteDisplayState createState() => _RouteDisplayState();
}

class _RouteDisplayState extends State<RouteDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.deepPurpleAccent,
       body: new Stack(
       fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/thapar.jpg"),
            fit: BoxFit.fitWidth,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new MaterialButton(
                        height: 100,
                        minWidth: 300,
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: new Text("Drowiness Detection"),
                        onPressed: () => {
                             Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return Dd1();
            }))
           } ,
                        splashColor: Colors.white,
              ),
              new Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              new MaterialButton(
                        height: 100,
                        minWidth: 300,
                        color: Colors.grey,
                        textColor: Colors.white,
                        child: new Text("Safe routing"),
                        onPressed: () => {
                           Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return Fog1();
            }))
                        } ,
                        splashColor: Colors.white,

              )
            ],
          )
        ]
       )
    );
  }
}