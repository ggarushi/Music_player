import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';
import 'Album.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            theme:ThemeData(
              primaryColor: Color(0xffbca89b),
              accentColor: Colors.white,
              primaryColorDark: Color (0xff6f3d2e),

            ),
            home:Home(),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:Column(
        children:<Widget>[
          Navbar(),
          Container(
              height:height/2.5,
            child:ListView.builder(itemBuilder: (context,index){
              return Album();
            },
                itemCount:3,
                scrollDirection: Axis.horizontal,
            )
          )
        ]
      )
    );
  }
}


