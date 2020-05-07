import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
class Notificationn extends StatefulWidget {
  @override
  _NotificationnState createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: 

Column(
  children: <Widget>[
    Container(
      height: MediaQuery.of(context).size.height/6.5,
      decoration: BoxDecoration(
        color: Color(0xff414141),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(23),
          bottomLeft: Radius.circular(23),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            child:InkWell(
              onTap:(){
                AppRoutes.pop(context);
              } ,
              child: 
            
             Image.asset('images/specialback.png',
            scale: 3,),
          )),
          Text('NOTIFICATIONS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          Container(
//margin: EdgeInsets.only(right: 10),
          )
        ],
      ),
    ),
    Container(
      height: MediaQuery.of(context).size.height,
      child:ListView.builder(
      itemCount: 9,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context,index)=>centerpart(
        index==0?'images/bell.png':index==1?'images/man3.png':'images/b3.png',
        index==0?'New Gig':index==1?'John Doe':'Hohn Doe',
        index==0?'':index==1?'send you a':'send you a',
        index==0?'':index==1?'friend request':'friend request',
        index==0?'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua':'Lorem ipsum dolor sit amit,consectetuter adipsing elit, sed do tempor incidident ut labor etLorem ipsum dolor sit amit',
     index)
      )  ),
      
  ],
),      
     ) );
  }

  Widget centerpart(String img,String name1,String name2,String name3,String msg,index){
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      margin: EdgeInsets.only(top: 05,right: 5,left: 10),
child: Container(
  
   height: MediaQuery.of(context).size.height/7,
  child: Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 22,top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text('10-01-2020',
            style:TextStyle(fontSize:7,
            color:Colors.black))
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 13),
        child: Row(
          children: <Widget>[
          CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('$img'),
              ),
              Container(
                  width: MediaQuery.of(context).size.width/1.3,
                margin: EdgeInsets.only(left: 13),
                child:Column(
                  
                children:<Widget>[
                  Row(children: <Widget>[
                  Text('$name1',
                 style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 12,
                 ),),
                  Text('$name2',
                 style: TextStyle(
                   color: Colors.grey,
                   fontWeight: FontWeight.bold,
                   fontSize: 12,
                 ),),
                  Text('$name3',
                 style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 12,
                 ),),
                  ],),
              
                Container(
                  
                  margin: EdgeInsets.only(right: 10,top: 10),
                  child: 
              Text('$msg',
               style: TextStyle(
                   color: Color(0xff6B6B6B),
                   fontWeight: FontWeight.bold,
                   fontSize: 11,
                  )))

       ],
              ))
            
          ],
        ),
      )
    ],
  ),
),
    );
  }
}