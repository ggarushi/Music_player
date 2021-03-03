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
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  double sliderValue=2;
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
          ),
          Text("On My Way",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color:Theme.of(context).accentColor)),
          Text('Alan Walker',style:TextStyle( fontSize: 20,
              fontWeight: FontWeight.w400,
              color:Theme.of(context).accentColor )),
      SliderTheme(data: SliderThemeData(
          trackHeight: 8,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius:6)
      ), child: Slider(
        min:0,
        max:20,
        value:sliderValue,
        activeColor: Theme.of(context).primaryColorDark,
        inactiveColor: Theme.of(context).primaryColorDark.withOpacity(0.4),
        onChanged: (value){
          setState(() {
            sliderValue=value;
          });

        },


      )
      ),
        ],
      )
    );
  }
}


