import 'package:flutter/material.dart';
import 'main2.dart' ; 
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue ,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>with SingleTickerProviderStateMixin  {

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationcontroller;

  @override
  void initState(){
    super.initState();
    _iconAnimationcontroller = new AnimationController(
      vsync: this,
      duration: new Duration( milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationcontroller,
      curve: Curves.easeIn,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: new Stack(
       fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/thapar.jpg"),
            fit: BoxFit.fitHeight,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),

          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 140.0,
                
              ),

              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.teal,
                        fontSize: 30.0 ,
                      )
                    )
                  ),
                                  child: new Container (
                                    padding: const EdgeInsets.all(40.0) ,
                                                                      child: new Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new MaterialButton(
                         height: 50,
                        minWidth: 100,
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Username"),
                        onPressed: () {}
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                       new MaterialButton(
                         height: 50,
                        minWidth: 100,
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Password"),
                        onPressed: () {}
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      new MaterialButton(
                         height: 50,
                        minWidth: 100,
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Enter VIN"),
                        onPressed: () {}
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      new MaterialButton(
                        height: 50,
                        minWidth: 100,
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Login"),
                       onPressed: (){
                    Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return MyHomePage();
            }));
                },
                        splashColor: Colors.white,

                      ),
                    ],
                  ),
                                  ),
                ),
              )
            ],
          )
        ],
      ),
      );
      
  }
}
