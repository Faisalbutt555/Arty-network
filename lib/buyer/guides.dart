import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';

import '../Drawer.dart';
import 'bar_drawer.dart';
class Guides extends StatefulWidget {
  @override
  _GuidesState createState() => _GuidesState();
}

class _GuidesState extends State<Guides> {
    final GlobalKey<ScaffoldState>  _sellerscaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  key:  _sellerscaffoldKey,
     // drawer: DrawerPage(context),
       appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),

child: SellerAppBarClass(context,false, _sellerscaffoldKey , 'GUIDES'),
        )
        ),
         drawer: SellerDrawer(),
    
      body: Container(
        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Text('Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit  Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amitLoream ipsum dolor sit amit, consector adipsing, elit do sit amit ',
        style: TextStyle(
          color: Color(0xff202020),
          fontSize: 14
        ),),
      ),    
    );
  }
}