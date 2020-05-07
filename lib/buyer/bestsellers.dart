
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Drawer.dart';
import 'bar_drawer.dart';

class Bestseller extends StatefulWidget {
  @override
  _BestsellerState createState() => _BestsellerState();
}

class _BestsellerState extends State<Bestseller> {
  @override
  Widget build(BuildContext context) {
         final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
       key: _scaffoldKey,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top: 20),
          child: 
        
        AppBarClass(context, false, _scaffoldKey, 'BEST SELLERS'),
       )),
      drawer: HomeDrawer(),
      body: GridView.builder(
                scrollDirection: Axis.vertical,
                  itemCount:20,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return sellerProfile(
                       index==0?'images/b2.png':index==1?'images/amb2.png':
                        index==2?'images/b1.png':index==3?'images/b2.png':
     index==4?'images/b3.png':index==5?'images/b4.png':
          index==6?'images/b5.png':index==7?'images/b6.png':
               index==8?'images/b7.png':
                       'images/b1.png',
                  index
                  );
                  })
            
    );
  }
    Widget sellerProfile (String img,index)
  {
    return Card(
      margin: EdgeInsets.only(top: 10,left: 10,right: 10),
      elevation: 13,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: 
    
    Container(
      margin: EdgeInsets.only(top: 07,bottom: 0,left: 8,right: 8),
      width: MediaQuery.of(context).size.width/4,
  
      child: Column(
        children: <Widget>[
               CircleAvatar(
            radius:25,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            child: Image.asset('$img',scale:2,), 
          ),
          
          Text('JOHN DOE',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 13,
              fontWeight: FontWeight.bold
          ),),
            SizedBox(height: .3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
Image.asset('images/starzz.png',scale: 6,),
Image.asset('images/starzz.png',scale: 6,),
Image.asset('images/starzz.png',scale: 6,),
Image.asset('images/starzz.png',scale: 6,),
          ],),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('4.9',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 11
              )),
              
                  Text('(100)',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 11
              ))
            ],
          )
    


        ],
      ),
     ) );
  }
}