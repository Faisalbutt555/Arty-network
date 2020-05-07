import 'package:flutter/material.dart';

import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';

import 'map.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
    final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            key: _sellerscaffoldKey,

           appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top: 20),
          child: SellerAppBarClass(context,true, _sellerscaffoldKey , 'MEET USER AROUND'),
        )
        ),
      drawer:SellerDrawer(),
      body:
      Stack(
        children: <Widget>[
   Mapppin(),
   
      Column(
          children: <Widget>[
           
            Card(
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(9)
),
              margin: EdgeInsets.only(top: 20,left: 10),
              child:Container(
            height: MediaQuery.of(context).size.height/17,
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('Geolocation',
                      style:TextStyle(color: Color(0xff29346E),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,)),
                    ),
                          Container(
                     margin: EdgeInsets.only(right: 10),
                      child: 
                 
Switch(
  value: isSwitched,
  onChanged: (value) {
    setState(() {
      isSwitched = value;
    });
  },
  activeTrackColor: Colors.lightGreenAccent, 
  activeColor: Colors.green
),
                    )
                  ],
                ),
              )
            ),
            Column(
              children: <Widget>[
     Container(
              margin: EdgeInsets.only(left: 30,top: 30),
              child:CircleAvatar(
              radius: 10,
backgroundColor: Colors.pink,
             ) ),
     
          Container(
              margin: EdgeInsets.only(left:50,top: 30),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
   CircleAvatar(
              radius: 10,
backgroundColor: Colors.pink,
             )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 20),
              child: 
            
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
   CircleAvatar(
              radius: 10,
backgroundColor: Colors.pink,
             ),
             SizedBox(
               width: 40,
             ),
              CircleAvatar(
              radius: 10,
backgroundColor: Colors.pink,
             )

                ],
             ) 
             ),
                Container(
              margin: EdgeInsets.only(top: 50,left: 20),
              child: 
            
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
   CircleAvatar(
              radius: 10,
backgroundColor: Colors.pink,
             ),
             SizedBox(
               width: 130,
             ),
              CircleAvatar(
              radius: 10,
backgroundColor: Colors.pink,
             )

                ],
             ) ),
                Container(
              margin: EdgeInsets.only(top: 20,right: 30),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
   CircleAvatar(
              radius: 10,
backgroundColor: Colors.pink,
             ),
             SizedBox(
               width:90,
             ),
             Image.asset('images/avator.png',
             scale: 5,)

                ],
             ) ),
              ],
            ),

Container(
  margin: EdgeInsets.only(left: 10,top: 50),
  height: MediaQuery.of(context).size.height/8,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 12,
    itemBuilder: (BuildContext context, index)=>lowerpart(),
  ),
)
],
  )
        ],
     )
      );
   

  }
  Widget lowerpart(){
    return Card(
      child:Container(
        height: 80,
        width: MediaQuery.of(context).size.width/2.7,
child: Column(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top: 20,left: 10),
      child: Row(
        children: <Widget>[
          Container(
            child: Image.asset('images/lowerpartimage.png',
            scale: 3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text('JOHN DOE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff29346E)
                  ),),
                ),
                 Container(
                  child: Text('TRADE EXPERT',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff29346E)
                  )
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(top: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text('08:30 pm',
              style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff29346E)
                  )),
          ),
          Container(
              margin: EdgeInsets.only(right: 10),
            child: Text('0.5km',
              style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff29346E)
                  )),
          )
        ],
      ),
    )

  ],
),
      )

    );
  }
}