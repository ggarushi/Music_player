import 'package:flutter/material.dart';
class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Control(
            icon: Icons.repeat,
          ),
          Control(
            icon: Icons.skip_previous,
          ),
//          PlayControl(),
          Control(
            icon: Icons.skip_next,
          ),
          Control(
            icon: Icons.shuffle,
          ),
        ],
      ),
    );
  }
}
class Control extends StatelessWidget {
  final IconData icon;
  const Control({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20)
        ],
      ),
      child: Stack(
          children: <Widget>[
      Center(
      child: Container(
          margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).primaryColorDark.withOpacity(0.6),
                offset: Offset(5, 10),
                spreadRadius: 3,
                blurRadius: 10),
            BoxShadow(
                color: Theme.of(context).primaryColorDark,
                offset: Offset(-3, -4),
                spreadRadius: -2,
                blurRadius: 20)
          ]),
    ),
    ),
    Center(
    child: Container(
    margin: EdgeInsets.all(10),
    decoration:
    BoxDecoration(color: Theme.of(context).primaryColor, shape: BoxShape.circle),
    child: Center(
    child: Icon(
    icon,
    size: 30,
    color: Theme.of(context).accentColor,
    )),
    ),
    ),]),
    );
  }
}
