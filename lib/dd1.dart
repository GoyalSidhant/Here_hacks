import 'package:flutter/material.dart';
import 'DDriver.dart';
class Drowsy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: new Dd1(),
       theme: new ThemeData(
        primarySwatch: Colors.blue ,
      ),
    );
  }
}

class Dd1 extends StatefulWidget {
  @override
  _Dd1State createState() => _Dd1State();
}

class _Dd1State extends State<Dd1> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.purpleAccent,
       body: new Stack(
       fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/1.jpg"),
            fit: BoxFit.fitWidth,
                      ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new MaterialButton(
                color: Colors.grey,
                onPressed: (){
                   Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return DDriveFin();
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
