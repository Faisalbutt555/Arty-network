
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:network/Community.dart';
import 'package:network/HelpCentre.dart';
import 'package:network/Home.dart';
import 'package:network/LoginScreen.dart';

import 'package:network/approuteclass.dart';
import 'package:network/paymentmethod.dart';
import 'package:network/sellermode/events.dart';
import 'package:network/sellermode/sellerconversion.dart';
import 'package:network/sellermode/sellerteamrequest.dart';

import 'buyer/buyeruserdashboard.dart';
import 'buyer/manageorders.dart';

import 'buyer/personalinformation.dart';
import 'buyer/savedgigs.dart';
import 'buyer/selleravator.dart';
import 'sellermode/friendrequest.dart';


class HomeDrawer extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _State_Drawer();
  }

}

class _State_Drawer extends State<HomeDrawer>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
Container(
  margin: EdgeInsets.only(top: 40,right: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Text('Buyer',
      style: TextStyle(
      color: Colors.black,
      fontWeight:FontWeight.normal),)
    ],
  ),
),
                  Padding(
                    padding: EdgeInsets.only(top:0),
                    child: 
                    CircleAvatar(
                      child:    InkWell(
                        onTap: (){
                        AppRoutes.push(context, Personalinfofrmation());
                        },
                   
                        child: Image.asset('images/circular_image.png',),
                      ),
                       
                      radius: 50,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Text('JOHN DOE',style: TextStyle(
                    fontSize:18,
                    fontWeight:FontWeight.bold
                  ),),
                  Text('CA, USA',style: TextStyle(
                    fontSize:13,
                    fontWeight:FontWeight.bold
                  ),),
                ],
              ),
            ),

            Expanded(
              flex: 3,
              child: _ListDrawer(context),
            ),


                GestureDetector(
                  child: Container(
                      width: MediaQuery.of(context).size.width*.95,
                      height: MediaQuery.of(context).size.height*.07,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                                               Color(0xffD04593),Color(0xffE47C79)

                              ]
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Image.asset('images/sign-out-option.png',scale: 3,),
                          ),
                          Text('LOG OUT',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      )
                  ),
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                )


              ],
            ),


      )
    );
  }

  Widget _ListDrawer(BuildContext context)
  {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          //Home
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/home.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Home',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
              AppRoutes.push(context, Home());
              
            },
          ),

          //Admin Dashboard
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left: 0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/Layer_x0020_1.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('User Dashoard',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
           onTap: (){
             AppRoutes.push(context, BuyerPanel());
      
           },
          ),


          //Money Control Panel
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/manageorder.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Manage Order',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
          AppRoutes.push(context, Manageorders());
             },
          ),
        //Money Control Panel
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left: 0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/savedgigs.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Saved Gigs',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
         AppRoutes.push(context, SavedGigs());
             },
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left: 0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/event.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Events',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
          AppRoutes.push(context, Events());
             },
          ),
                    GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left: 0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/friendrequest.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Friend Request',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
         AppRoutes.push(context, FriendRequest());
             },
          ),
                  GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/teamrequest.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Team Request',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
             AppRoutes.push(context,Teamrequest());
              }  ),


          //Conversations
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,
              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/envelope.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Messages',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
         
         AppRoutes.push(context,SellerConversion());
            },
          ),

          //Community
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/help.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Community',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Community(),
                  ));
            },
          ),



          //Payment Method
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/black-and-white-credit-cards.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Payment Method',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
AppRoutes.push(context, Paymentmethod());
            },
          ),



          //Help Center
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/help_icon.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Help Center',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HelpCenter(),
                  ));
            },
          ),


          //Settings
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:0),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/settings.png',scale:5,),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text('Settings',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
AppRoutes.push(context, Logout());
            },
          )
        ],
      ),
    );
  }
}