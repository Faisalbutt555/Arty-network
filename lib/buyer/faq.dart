
import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';


class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
        final GlobalKey<ScaffoldState>_sellerscaffoldKey = new GlobalKey<ScaffoldState>();


    return Scaffold(
        key: _sellerscaffoldKey,
     // drawer: DrawerPage(context),
    appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),

child: SellerAppBarClass(context,false ,_sellerscaffoldKey , 'FAQ'),
        )
        ),
         drawer: SellerDrawer(),
   
      body:ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,index)=>expansiontile(
          index==0?'What is ARTYNETWORK':index==1?'How ARTYNETWORK  work ?':index==2?'How do i sale gigs ?':index==3?
          'How do I add payment method ?':'How do I add payment method ?',
          index
        ),
      )
     
    );
  
  }
  Widget expansiontile(String txt,index){
    return ExpansionTile(
      title: Text('$txt',
      style: TextStyle(
        color: Color(0xff686868),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),),
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child:Text('Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit  Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amit Loream ipsum dolor sit amit, consector adipsing, elit do sit amitLoream ipsum dolor sit amit, consector adipsing, elit do sit amit ',
      style: TextStyle(
        color: Color(0xff686868),
        fontWeight: FontWeight.bold,
        fontSize: 14
      )
       ),
    )
      
      ],


    );
  }
  }