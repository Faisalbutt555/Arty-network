import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network/buyer/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'Drawer.dart';
import 'buyer/bar_drawer.dart';


class AdminDashboard extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _State_AdminDash();
  }
}
class _State_AdminDash extends State<AdminDashboard>
{


final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
@override
Widget build(BuildContext context) {
return Scaffold(
key: _scaffoldKey,
appBar:PreferredSize(
        preferredSize: Size.fromHeight(60), // here the desired height
        child:AppBarClass(context, true, _scaffoldKey, 'ADMIN DASHBOARD'),),
      drawer: HomeDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
                        Container(
              margin: EdgeInsets.only(left: 10,top: 10,right: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.3,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.height*.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.9,
                              spreadRadius: 1.0,
                              color: Colors.grey
                          )
                        ]
                    ),

                    child: Column(
                      children: <Widget>[

                        CircularPercentIndicator(
                          radius: 80.0,
                          startAngle: 90,
                          lineWidth: 10.0,
                          percent: 0.8,
                          center: CircleAvatar(
                            radius: 20,
                            foregroundColor: whiteColor,

                            child: CircleAvatar(
                              backgroundColor: whiteColor,
                              radius: 18,
                              foregroundColor: whiteColor,
                              child: Center(
                                child: Text('60',style: TextStyle(
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

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Money in',style: TextStyle(
                              color: blueColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('\$300 ',style: TextStyle(
                                color: blueColor,
                                fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        )



                      ],
                    ),

                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.height*.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.9,
                              spreadRadius: 1.0,
                              color: Colors.grey
                          )
                        ]
                    ),

                    child: Column(
                      children: <Widget>[

                        CircularPercentIndicator(
                          radius: 80.0,
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

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Money in',style: TextStyle(
                                color: blueColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('\$300 ',style: TextStyle(
                                color: blueColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )



                      ],
                    ),
                  ),

                ],
              ),
            ),



            Padding(
                padding: EdgeInsets.only(left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('USERS SELLING MORE GIGS',style: TextStyle(
                        color: Color(0xff29346E),
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                )
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10,top: 12),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  return usersSellingMoreGigs(
                  index,
                  index==0?'images/man1.png':index==1?'images/man2.png':index==2?'images/man3.png':'images/man1.png'
                  );
                },itemCount: 10,),
            ),

            Padding(
                padding: EdgeInsets.only(left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('USERS BEST AMBADSSADORS',style: TextStyle(
                        color: blueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                        
                    ),),
                  ],
                )
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10,top: 12),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  return usersBestAmabassadors(
                  index,
                   index==0?'images/amb1.png':index==1?'images/amb2.png':index==2?'images/amb3.png':'images/man1.png'

                  );
                },itemCount: 10,),
            ),

                 

            Padding(
                padding: EdgeInsets.only(left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('HOW MANY USERS JOINED APP',style: TextStyle(
                        color: blueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                )
            ),

            Container(
              margin: EdgeInsets.only(left: 60,right: 60,top: 40,bottom: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color(0xffD04593),
                        Color(0xffE47C79),
                      ]
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                 Padding(
                   padding: EdgeInsets.only(left: 5,right: 5),
                   child:  Image.asset('images/users_image.png',scale: 3,),
                 ),

                  Text('200 USERS',style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)

                ],
              )
            )


          ],
        ),
      ),
    );
  }

  Widget usersSellingMoreGigs ( int index,String img)
  {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10,left: 8,right: 8),
      width: MediaQuery.of(context).size.width/3.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
          color: Color(0xffF1F17C),
          boxShadow: [
            BoxShadow(
                blurRadius: 1.9,
                spreadRadius: 0.7,
                color: Colors.grey
            )
          ]
      ),
      child: Column(
        children: <Widget>[

          Image.asset('$img',scale: 1,),
          Text('JOHN DOE',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),),
SizedBox(height: 5,),
          Text('10 Items',style: TextStyle(
            color: Color(0xff29346E),
            fontSize: 12,
            fontWeight: FontWeight.normal
          ),)

        ],
      ),
    );
  }


  Widget usersBestAmabassadors ( int index,String img)
  {
      return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10,left: 8,right: 8),
      width: MediaQuery.of(context).size.width/3.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
          color: Color(0xffF3C3D6),
          boxShadow: [
            BoxShadow(
                blurRadius: 1.9,
                spreadRadius: 0.7,
                color: Colors.grey
            )
          ]
      ),
      child: Column(
        children: <Widget>[

          Image.asset('$img',scale: 1,),
          Text('JOHN DOE',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),),
SizedBox(height: 5,),
          Text('10 Items',style: TextStyle(
            color: Color(0xff29346E),
            fontSize: 12,
            fontWeight: FontWeight.normal
          ),)

        ],
      ),
    );
  }

}