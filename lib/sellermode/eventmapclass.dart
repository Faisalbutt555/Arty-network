import 'package:flutter/material.dart';
import 'package:network/buyer/map.dart';

import '../approuteclass.dart';
class Eventlocation extends StatefulWidget {
  @override
  _EventlocationState createState() => _EventlocationState();
}

class _EventlocationState extends State<Eventlocation> {
  bool isswitched=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
      
      
      foramap(),
      )    
    );
  }  Widget top1(String txt){
    return Container(
height:MediaQuery.of(context).size.height/5.5,
width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
                    color: Color(0xff414141),

  borderRadius: BorderRadius.only(
    bottomLeft:Radius.circular(23),
      bottomRight:Radius.circular(23),
  )
),
child:Container(
  margin: EdgeInsets.only(top: 20),
  child:

 Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
 Container(
   margin: EdgeInsets.only(left: 20),
   child: 
 
      InkWell(
          onTap: (){
            AppRoutes.pop(context);
          },
          child:  Image.asset('images/specialback.png',
  scale:3),
  ) ),
Text('$txt',
style:TextStyle(color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold))
,  Container(
    margin: EdgeInsets.only(right: 20),
    )
    ],
  ))
 

  

    );
  }
   Widget foramap(){
    return Column(
      children: <Widget>[
top1('NEAREST LOCATION'),

    Container(
      height: MediaQuery.of(context).size.height/1.2,
      child: Stack(
        children: <Widget>[
Mapppin(),
Column(
 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
Card(
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(9)
),
              margin: EdgeInsets.only(top: 20,left: 10),
              child:Container(
            height: MediaQuery.of(context).size.height/14,
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
  value: isswitched,
  onChanged: (value) {
    setState(() {
      isswitched = value;
    });
  },
  activeTrackColor: Colors.lightGreenAccent, 
  activeColor: Color(0xffFBB85D&0xffF4A665&0xffCC3B97)
),
                    )
                  ],
                ),
              )
            ),
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
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
Container(
     margin: EdgeInsets.only(top: 30),
     height: MediaQuery.of(context).size.height/16.5,
     width: MediaQuery.of(context).size.width/2,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(6),
       gradient: LinearGradient(
         colors: [Color(0xffD04593),Color(0xffE14841)]
       )
     ),
     child: Center(
       child:Text('SEARCH',
     style:TextStyle(fontSize: 11,
     fontWeight:FontWeight.bold,
     color:Colors.white)),
    ) )
         ],
       )
   
  ],
)
 
     

        ],
      )
     
    )
  
  
   
           

      ],
    );
  }
}
