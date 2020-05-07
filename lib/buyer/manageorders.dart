import 'package:flutter/material.dart';

import '../Drawer.dart';
import 'bar_drawer.dart';
class Manageorders extends StatefulWidget {
  @override
  _ManageordersState createState() => _ManageordersState();
}

class _ManageordersState extends State<Manageorders> {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top: 20),
          child: 
        
        AppBarClass(context, false, _scaffoldKey, 'Manage Orders'),
       ) ),
      drawer: HomeDrawer(),

      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
    Image.asset('images/manageorders.png',
        scale: 3,)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text('No Orders Yet',
          style:TextStyle(fontWeight: FontWeight.bold,
          fontSize:17,color:Colors.black)),
          SizedBox(height: 20,),
                Text('You can view and Manage your Orders here ',
          style:TextStyle(fontWeight: FontWeight.bold,
          fontSize:15,color:Colors.grey))
    
        ],
      ),
    );
  }
}