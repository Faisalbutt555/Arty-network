import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../approuteclass.dart';
class Pluspic extends StatefulWidget {
  @override
  _PluspicState createState() => _PluspicState();
}

class _PluspicState extends State<Pluspic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createeventonplus(),
    );
  }
   Widget top1(String txt){
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
  margin: EdgeInsets.only(top: 13),
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
fontSize:18,
fontWeight: FontWeight.bold))
,  Container(
    margin: EdgeInsets.only(right: 20),
    )
    ],
  ))
 

  

    );
  }
Widget createeventonplus(){
    return SingleChildScrollView(
      child:Column(
      children: <Widget>[
top1('CREATE EVENT'),
Container(
        margin: EdgeInsets.only(top: 15, left: 30, right: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: TextFormField(
            decoration: InputDecoration(

                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
              left:MediaQuery.of(context).size.width/4,bottom: 5
                ),
                hintText: 'Event name',
                hintStyle: 
                TextStyle(color: Color(0xff707070),fontSize: 14,
                fontWeight: FontWeight.bold),
              
                ),
          ),
        )),
        Container(
          margin: EdgeInsets.only(
            left: 30,
            top: 20
          ),
          child: Row(
            children: <Widget>[
              Column(
                  children: <Widget>[
                    Container(
                       height: MediaQuery.of(context).size.height/9,
                       width: MediaQuery.of(context).size.width/2.3 ,
                      child:DottedBorder(
                      color: Color(0xff3C3C3C),
                      strokeWidth: 1.9,
                child:Center(
      child:Image.asset('images/dotbackimg.png',
                        scale:4,
                      ),
                    )) ),
                    Container(
                      margin: EdgeInsets.only(top:4),
                      height:MediaQuery.of(context).size.height/19,
                      width: MediaQuery.of(context).size.width/2.3,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffD04593),Color(0xffE14841)
                          ]
                        )
                      ),
                      child:Center(
                        child:
                      Text('Upload Picture',
                      style:TextStyle(fontWeight: FontWeight.normal,
                      fontSize:11,
                      color:Colors.white)),
                     ) )
                  
                  ],
                ),
                
                Column(
                  children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left:8),
        width: MediaQuery.of(context).size.width/2.4,
        height: MediaQuery.of(context).size.height/18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child:
       TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
              left: 30,top:5
                ),
                hintText: 'Event Type',
                hintStyle: 
                TextStyle(color: Colors.black,fontSize: 12,
                fontWeight:FontWeight.bold),
              suffixIcon: Icon(Icons.arrow_drop_down,
              color: Colors.black,)
                ),
          
        )
        ),
          Container(
                  margin: EdgeInsets.only(left:8,top: 5),
        width: MediaQuery.of(context).size.width/2.4,
        height: MediaQuery.of(context).size.height/18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child:
       TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
              left: 30,top:5
                ),
                hintText: 'Starting Time',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize: 11,
                fontWeight: FontWeight.bold),
              suffixIcon:InkWell(
                onTap: (){},
                child: Image.asset('images/calenderfinal.png',
                scale:3.5,),
              )
                ),
          
        )),
          Container(
                  margin: EdgeInsets.only(left:8,top: 5),
        width: MediaQuery.of(context).size.width/2.4,
        height: MediaQuery.of(context).size.height/18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child:
       TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
              left: 30,top:5
                ),
                hintText: 'Ending Time',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize: 11,
                fontWeight: FontWeight.bold),
              suffixIcon:InkWell(
                onTap: (){},
                child: Image.asset('images/calenderfinal.png',
                scale: 3.5,),
              )
                ),
          
        )
        ),
        
                  ],
                )

              
            ],
          ),
        
        ),
        Container(
          margin: EdgeInsets.only(top:30),
          child: Row(
            children: <Widget>[
                   Container(
                  margin: EdgeInsets.only(left: 30,top: 5),
        width: MediaQuery.of(context).size.width/2.7,
        height: MediaQuery.of(context).size.height/18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child:
       TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
              left: 20,top:5
                ),
                hintText: 'Event Date',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize: 12,
                fontWeight: FontWeight.bold),
              suffixIcon:InkWell(
                onTap: (){},
                child: Image.asset('images/clok.png',
                scale: 4,),
              )
                ),
          
        )),
             Container(
                  margin: EdgeInsets.only(left: 15,top: 5),
        width: MediaQuery.of(context).size.width/2.4,
        height: MediaQuery.of(context).size.height/18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child:Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/4,
              child:TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left:13,top:5
                ),
                hintText: 'Paid',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize: 14,
                fontWeight: FontWeight.bold),
              suffixIcon:IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_drop_down),
              )
                ),
            )),
            Container(margin: EdgeInsets.only(left:0),
              height: MediaQuery.of(context).size.height/20,
              width: MediaQuery.of(context).size.width/6.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                color: Colors.grey
                )
              ),
              child:Center(
                child: Text('\$ 40',
                style: TextStyle(
                  color:Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize:12
                ),),
              )
            )

          ],
        ),
        
        
        ),
        
        
            ],
          ),
          
        ),
        Container(
        margin: EdgeInsets.only(top: 15, left: 30, right: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: TextFormField(
            
            decoration: InputDecoration(
              
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
              left:MediaQuery.of(context).size.width/4,
              bottom: 5
                ),
                hintText: 'Event Location',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize:13,
                fontWeight: FontWeight.bold),
              
                ),
                
          ),
          
        )),
             Container(
                  margin: EdgeInsets.only(left: 30,top: 12,right: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/17,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(03)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
            
              width: MediaQuery.of(context).size.width/1.7,
              child:TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left:13,
                bottom:7
                ),
                hintText: 'Maximum Attendees allowed',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize: 13,
                fontWeight: FontWeight.bold),
             
                ),
            )),
            Container(
              margin: EdgeInsets.only(right:1.5),
              height: MediaQuery.of(context).size.height/22,
              width: MediaQuery.of(context).size.width/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                color: Colors.grey
                )
              ),
              child:Center(
                child: Text('400',
                style: TextStyle(
                  color:Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize:12
                ),),
              )
            ),


          ],
        ),
        
        
        ),
               Container(
                  margin: EdgeInsets.only(left: 30,top: 12,right: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]
            ),
        child:Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/1.7,
              child:TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left:13,
                ),
                hintText: 'Description',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize: 15,
                fontWeight: FontWeight.bold),
             
                ),
                maxLines: 5,
            )),
      

          ],
        ),
        ),
        Container(
          margin: EdgeInsets.only(top:25),
          height: MediaQuery.of(context).size.height/20,
          width: MediaQuery.of(context).size.width/1.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            gradient: LinearGradient(
              colors: [
                 Color(0xffD04593),Color(0xffE14841)
              ]
            )
          ),
          child: Center(child: Text('Post Evet',
          style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12
          ))),
        )
        
      ],
     ) 
     );
}}