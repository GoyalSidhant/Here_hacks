import 'package:flutter/material.dart';
import 'Fogfin.dart';
class fog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: new Fog1(),
       theme: new ThemeData(
        primarySwatch: Colors.deepPurple 
       )
    );
  }
}

class Fog1 extends StatefulWidget {
  @override
  _Fog1State createState() => _Fog1State();
}

class _Fog1State extends State<Fog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.purpleAccent,
       body: new Stack(
       fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/2.jpg"),
            fit: BoxFit.fitWidth,
            colorBlendMode: BlendMode.clear,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new MaterialButton(
                color: Colors.grey,
                onPressed: (){
                   Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return FogFin();
            }));
                },
                 child: Icon(Icons.arrow_right),
              ),
              new Padding(
                padding: EdgeInsets.only(bottom: 40),
              )
            ],
          )
        ]
       )
    );
  }
}