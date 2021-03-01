import 'package:flutter/material.dart';
class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(horizontal:20),
      alignment: Alignment.bottomCenter,
      height:90,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          Navitem( icon: Icons.arrow_back_ios),
          Text('Playing Now',style: TextStyle(fontSize: 20,color: Theme.of(context).accentColor,fontWeight: FontWeight.w500),),
          Navitem( icon: Icons.list),
        ]
      )
    );
  }
}
class Navitem extends StatelessWidget {
  final IconData icon;
  const Navitem({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:40,
      width:40,
      decoration:BoxDecoration(
        boxShadow:[BoxShadow(color: Colors.grey.withOpacity(0.5),
            offset: Offset(5,10),
            spreadRadius: 3,
            blurRadius: 10
        ),
          BoxShadow(color:Theme.of(context).primaryColorDark ,offset: Offset(-3,-4),spreadRadius: -1,blurRadius: 20
          )
        ],
        color:Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
        child:Icon(
        icon,
      color:Theme.of(context).accentColor,
    ),
    );
  }
}
