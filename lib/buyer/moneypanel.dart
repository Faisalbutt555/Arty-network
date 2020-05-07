import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
import 'package:network/buyer/selleravator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Drawer.dart';
import 'constants.dart';

class Panel extends StatefulWidget {
  @override
  _PanelState createState() => _PanelState();
}

class _PanelState extends State<Panel> {
     final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
    drawer: HomeDrawer(),
    body: SingleChildScrollView(
        child:Column(
        children: <Widget>[
   Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/1.6,
              color: Color(0xff414141),
            ),
            Container(
               margin: EdgeInsets.only(top: 40,left: 20),
              child: 
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[

    InkWell(
              onTap: () {
                  _scaffoldKey.currentState.openDrawer();
           
              },
              child: Container(
                child:Image.asset(
                'images/drawer_icon.png',
                scale: 4,
              )
              
              )
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: 
  Text('MONEY CONTROL PANEL',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
                 ),
            
                  InkWell(
              onTap: () {
                AppRoutes.push(context, Logout());
              },

              child: Container(
                child:Image.asset(
                'images/circular_image.png',
                scale: 4,
              )
              
              )
              ),
              
  ],

             ) ),
             Container(
               margin: EdgeInsets.only(top: 110,left: 20),
               child: Column(
                 children: <Widget>[
                   Text('Hey, John Doe ',
                     style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
                   )
                 ],
               ),
             ),
                   Container(
               margin: EdgeInsets.only(top: 150,left: 20),
               child: Column(
                 children: <Widget>[
                   Text(' Here is your money control panel',
                     style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal
              ),
                   )
                 ],
               ),
             ),
               Container(
               margin: EdgeInsets.only(top: 180,left: 20),
               child: Column(
                 children: <Widget>[
                   Text(' Gigs I Have Bought/Sold ',
                     style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold

              ),
                   )
                 ],
               ),
             ),
             Container(
              
                margin: EdgeInsets.only(top: 220,left: 0),
               child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffFF9500),
                        child: CircleAvatar(
                            backgroundColor:Colors.white,
                            radius: 21,
                            foregroundColor: whiteColor,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffFF9500),
                              radius: 19,
                              foregroundColor: whiteColor,
                              child: Center(
                                child: Text('100%',style: TextStyle(
                                  color: Colors.white,
                                    fontSize:9,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,
                        margin: EdgeInsets.only(left: 50,top: 10),
                        child: Text('Order Completion',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),),
                      )
                    ],
                  
                ),
                   Column(
                    children: <Widget>[
                 CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffFF9500),
                        child: CircleAvatar(
                            backgroundColor:Colors.white,
                            radius: 21,
                            foregroundColor: whiteColor,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffFF9500),
                              radius: 19,
                              foregroundColor: whiteColor,
                              child: Center(
                                child: Text('100%',style: TextStyle(
                                  color: Colors.white,
                                    fontSize:9,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,
                        margin: EdgeInsets.only(left: 50,top: 10),
                        child: Text('On-time delivery',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12

                        ),),
                      )
                    ],
                  ),
                
               ],
             )
             ),
            Container(
              margin: EdgeInsets.only(top: 320,left: 45),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000)
                  )
                ],
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
                height: MediaQuery.of(context).size.height/4,
                 width: MediaQuery.of(context).size.width/2.8,
               child: 
               Column(
                 children: <Widget>[
                   Container(
                     margin: EdgeInsets.only(right: 16,top: 10),
                     child:   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Image.asset('images/wifi.png',
                       scale: 4,)
                     ],
                   )
                   ),
                   SizedBox(height: 4,),
                  
                        CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 10.0,
                          startAngle: 50,
                          percent: 0.9,
                          center: CircleAvatar(
                            backgroundColor: blueColor,
                            radius: 20,
                            foregroundColor: whiteColor,

                            child: CircleAvatar(
                              backgroundColor: whiteColor,
                              radius: 18,
                              foregroundColor: whiteColor,
                              child: Center(
                                child: Text('90',style: TextStyle(
                                  color: blueColor,
                                    fontSize: 12
                                ),),
                              ),
                            ),
                          ),
                          backgroundColor: Colors.white,
                          linearGradient: LinearGradient(
                        colors: [
                        Color(0xffCC3B97),
                          Color(0xffFBB85D),
                        ],
                    stops: [0.0, 1.0],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                        tileMode: TileMode.repeated
                    )
                        ),
                    SizedBox(height: 4),
                   Text('Debit',
                    style: TextStyle(
                color: Color(0xff29346E),
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
                   ),
                    SizedBox(height: 6,),
                   Text('\$300',
                    style: TextStyle(
                color: Color(0xff29346E),
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
                   )
                 
                 ],
               )
              ),
                Container(
              margin: EdgeInsets.only(top: 320,left:230),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000)
                  )
                ],
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
                height: MediaQuery.of(context).size.height/4,
                 width: MediaQuery.of(context).size.width/2.8,
               child: 
               Column(
                 children: <Widget>[
                   Container(
                     margin: EdgeInsets.only(right: 16,top: 10),
                     child:   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Image.asset('images/wifi.png',
                       scale: 4,)
                     ],
                   )
                   ),
                   SizedBox(height: 7,),
                 
                        CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 10.0,
                          startAngle: 50,
                          percent: 0.9,
                          center: CircleAvatar(
                            backgroundColor: blueColor,
                            radius: 20,
                            foregroundColor: whiteColor,

                            child: CircleAvatar(
                              backgroundColor: whiteColor,
                              radius: 18,
                              foregroundColor: whiteColor,
                              child: Center(
                                child: Text('80',style: TextStyle(
                                  color: blueColor,
                                    fontSize: 12
                                ),),
                              ),
                            ),
                          ),
                          backgroundColor: Colors.white,
                          linearGradient: LinearGradient(
                        colors: [
                        Color(0xffCC3B97),
                          Color(0xffFBB85D),
                        ],
                    stops: [0.0, 1.0],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                        tileMode: TileMode.repeated
                    )
                        ),
                    SizedBox(height: 4,),
                   Text('Credit',
                    style: TextStyle(
                color: Color(0xff29346E),
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
                   ),
                    SizedBox(height: 6,),
                   Text('\$200',
                    style: TextStyle(
                color: Color(0xff29346E),
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
                   )
                 
                 ],
               )
              ),
              
                Container(
                  margin: EdgeInsets.only(top: 530,left: 20),
                  child: Text('MONEY I"LL MAKE AS AN AMBASSADOR',
                     style: TextStyle(
              color: Color(0xff29346E),
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                elevation: 10,
                margin: EdgeInsets.only(top: 580,left: 60),
                child: Container(
                  height: MediaQuery.of(context).size.height/7.5,
                  width: MediaQuery.of(context).size.width/1.4,
                  child: Row(
                    children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset('images/bankaccount.png',
                      scale:4),
                    ),
                    SizedBox(width: 17,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Bank Account',
                          style: TextStyle(
           color: Color(0xff29346E),
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                        ),
                        SizedBox(height: 7,),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: 
                          Text('\$ 11438.9',
                          style: TextStyle(
           color: Color(0xff29346E),
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                         ) )
                      ],
                    )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 700,left: 30),
                child: Text('Lorem ipsum color sit amit,consectetuter adepesecing elit,sesasd do Lorem ipsum color sit amit,consectetuter\n\n adepesecing elit,sesasd do Lorem ipsum color sit amit,consectetuter adepesecing elit,sesasd do ispum',
                    style: TextStyle(
           color: Color(0xff29346E),
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
overflow: TextOverflow.visible,)
              ),


Container(
  margin: EdgeInsets.only(top: 800,left: 30,right: 20),
  child: Image.asset('images/layer.png'),

)

             
          ],
        ),
        ],
      
       ) 
       ),
          
    
    );
  }
}