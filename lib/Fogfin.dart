import 'package:flutter/material.dart';
class FofFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FogFin(),
    );
  }
}

class FogFin extends StatefulWidget {
  @override
  _FogFinState createState() => _FogFinState();
}

class _FogFinState extends State<FogFin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.purpleAccent,
       body: new Stack(
       fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/6.jpg"),
            fit: BoxFit.fitWidth,
            colorBlendMode: BlendMode.clear,
          ),
        ]
       )
    );
  }
}