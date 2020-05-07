import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerinstantmessage.dart';

import '../approuteclass.dart';
class Communitychatpopup extends StatefulWidget {
  @override
  _CommunitychatpopupState createState() => _CommunitychatpopupState();
}

class _CommunitychatpopupState extends State<Communitychatpopup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(32),
                           bottomRight: Radius.circular(32)
                         ),
  color: Color(0xff414141),
                       ),
              
                height: MediaQuery.of(context).size.height/5,
                child:
                 Column(children: <Widget>[
                  Container(
  margin: EdgeInsets.only(top:50,left: 20),
  child:Column(
   children: <Widget>[
   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      InkWell(
          onTap: (){
            
     AppRoutes.pop(context);
    
          },
          child: Image.asset('images/specialback.png',
          scale: 4,),
          
      ),
Text(
  'COMMUNITY  CHAT',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize:18
  ),
),
Container(

)

    ],
  ),
           
          Container(
               margin: EdgeInsets.only(left: 10,top:15,bottom: 3),
                width: MediaQuery.of(context).size.width/1.5,
                height: MediaQuery.of(context).size.height*.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(08)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.9,
                      spreadRadius: 1.0,
                      color: Colors.grey
                    )
                  ]
                ),
                    child: 
                Padding(
                  padding: EdgeInsets.only(top: 2,left: 20,right: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'SEARCH',
                        hintStyle: TextStyle(
                            color: Color(0xff29346E),
                            fontSize: 16
                        ),
                      suffixIcon: Image.asset('images/search.png',scale: 5,)
                    ),
                  ),
                )
          )
    ],
  ) 
),
 ],
                ),
              ),

                        Container(
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(top: 10),
                child:ListView.builder(
          itemCount:9,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index)=>
          InkWell(
            onTap: (){
    AppRoutes.push(context, Sellerinstantmessage());
            },
            child:
          
          communintychat(
             index==0?'images/im1.png':index==1?'images/im2.png':index==2?'images/im3.png':index==3?'images/im4.png':index==4?'images/im5.png':'images/im6.png',
            index==0?'jane jallow':index==1?'jane jallow':'jane jallow',
            index==0?'10-01-2020':index==1?'10-01-2020':index==2?'10-01-2020':index==3?'10-01-2020':'10-01-2020',
          index==0?1:index==1?2:index=3,
            index==0?'You are one of peters compressions plays,huh?':index==1?'Both of them':'You are one of peters compressions plays,huh? have of babies',
            index
            )  )
      
        
      ),
              ),
          ],
        ),

      ),
    
      
    );
  }
   Widget communintychat(String img,String name,String time,int msgnumber,String msg,int index){
    return  Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          margin: EdgeInsets.only(top: 5, left: 8, right: 5),
          child: Container(
              height: MediaQuery.of(context).size.height / 7,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                    margin: EdgeInsets.only(right: 20, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '$time',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left:10),
                    child: Row(
                     children: <Widget>[
                         CircleAvatar(
                          child: Image.asset('$img'),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left:9),
                                child: Text(
                                  '$name ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                     ],
                   ) ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius:8,
                              backgroundColor: Colors.pink,
                              child: Text(
                                '$msgnumber',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Text(
                                  '$msg',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:12,
                                      color: Colors.grey),
                                ))
                          ],
                        )
                     
                ],
              )
              )
              );
  }
}