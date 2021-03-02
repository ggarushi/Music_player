import 'package:flutter/material.dart';
class Album extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
        width:260,
        padding:EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal:20,vertical:30),
      child:ClipRRect(
          borderRadius: BorderRadius.circular(20),
        child:Image.network('https://i.ytimg.com/vi/dhYOPzcsbGM/maxresdefault.jpg',fit:BoxFit.fill)
      ),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow:[BoxShadow(color: Colors.grey.withOpacity(0.5),
            offset: Offset(20,6),
            spreadRadius: 3,
            blurRadius: 20
        ),
          BoxShadow(color:Theme.of(context).primaryColorDark ,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20
          )
        ],

      ),
    );
  }
}
