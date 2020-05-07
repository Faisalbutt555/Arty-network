
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:network/HelpCentre.dart';
import 'package:network/LoginScreen.dart';
import 'package:network/approuteclass.dart';

import 'package:network/buyer/meetuser.dart';
import 'package:network/buyer/personalinformation.dart';
import 'package:network/buyer/selleravator.dart';
import 'package:network/paymentmethod.dart';
import 'package:network/sellermode/buyerrequest.dart';
import 'package:network/sellermode/events.dart';
import 'package:network/sellermode/myorders.dart';
import 'package:network/sellermode/sellerCommunity.dart';
import 'package:network/sellermode/sellerconversion.dart';
import 'package:network/sellermode/sellerhome.dart';
import 'package:network/sellermode/sellerteamrequest.dart';
import 'friendrequest.dart';
class SellerDrawer extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _State_Drawer();


    
  }

}

class _State_Drawer extends State<SellerDrawer>
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
  margin: EdgeInsets.only(top:30,right: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Text('Seller',
      style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,))
    ],
  ),
),
                 
                    CircleAvatar(
                      child: InkWell(
                        onTap: (){
                        AppRoutes.push(context, Personalinfofrmation());
                        },
                   
                        child: Image.asset('images/circular_image.png',),
                      ),
  
                      radius:60,
                      backgroundColor: Colors.transparent,
                    ),
                  

                  Text('JOHN DOE',style: TextStyle(
                    fontSize:16                      ,
                    fontWeight: FontWeight.bold,
                    color:Color(0xff343434)
                  ),),
                  Text('CA, USA',style: TextStyle(
                    fontSize:13,
                        fontWeight: FontWeight.bold,
                    color:Colors.grey
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
                            padding: EdgeInsets.only(left: 0,right: 10),
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
                    logoutpopup();
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => LoginScreen(),
                    //     ));
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
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/home.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Home',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
              AppRoutes.push(context,SellerPanel());
              
            },
          ),

          //Admin Dashboard
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/buyerrequestdrawer.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Buyer Request',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
           AppRoutes.push(context,BuyerRequest());
           
            },
          ),


          //Money Control Panel
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left: 10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/manageorder.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Orders',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
          AppRoutes.push(context, Myorders());
             },
          ),
                    GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
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
                    flex: 5,
                    child: Text('Events',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
          AppRoutes.push(context, Events());
             },
          ),

          
          //Conversations
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,
              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/envelope.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Chat',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
         AppRoutes.push(context, SellerConversion());
      
            },
          ),
    
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/friendrequest.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Friend Request',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
         AppRoutes.push(context, FriendRequest());
             },
          ),





          //Meet User
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/map_icon.png',scale:5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Meet User',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
             Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (context) => Location(),
                 ));
            },
          ),
          //Community
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/teamrequest.png',scale: 5,),
                  ),
                  Expanded(
                    flex:5,
                    child: Text('Team Request',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
             AppRoutes.push(context,Teamrequest());
              }  ),

          //Community
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/help.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Community',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
                    ),),
                  )
                ],
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SellerCommunity(),
                  ));
            },
          ),



          //Payment Method
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
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
                    flex:5,
                    child: Text('Payment Method',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
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
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/help_icon.png',scale: 5,),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text('Help Center',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
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
              margin: EdgeInsets.only(right: 30,top: 7,left:10),
              width: MediaQuery.of(context).size.width*.8,
              height: MediaQuery.of(context).size.height*.04,

              child:  Row(
                children: <Widget>
                [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/settings.png',scale: 5,),
                  ),
                  Expanded(
                    flex:5,
                    child: Text('Settings',style: TextStyle(
                        color: Colors.black,
                        fontSize: 17
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
    void logoutpopup(){
    showDialog(
      context:context,
      builder: (BuildContext context){
        return AlertDialog(
         backgroundColor: Colors.transparent,
          actions: <Widget>[
            
Container(
  decoration: BoxDecoration(
  color: Colors.transparent,
    borderRadius: BorderRadius.circular(12)
  ),
  height: MediaQuery.of(context).size.height/3,
  width: MediaQuery.of(context).size.width,
  child:Stack(
  children: <Widget>[
       Align(
         alignment: Alignment.bottomCenter,
         child: 
         Container(
    height: MediaQuery.of(context).size.height*.25,
  width: MediaQuery.of(context).size.width,
  color: Colors.black,
    child:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
   Text('Are you sure you want to logout',
          style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )),
          SizedBox(
            height: 40,
          )
,             Row(
  
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.end,
               
        children: <Widget>[
          InkWell(
            onTap: (){
              AppRoutes.pop(context);
            },
            child:  Container(
              height: MediaQuery.of(context).size.height/21,
              width: MediaQuery.of(context).size.width/6.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              gradient: LinearGradient(
                colors: [Color(0xffE47C79),Color(0xffD04593)]
              )
            ),
            child: Center(
              child:   Text('No',
            style: TextStyle(
              color: Colors.white
            ),
            ), 
            )
         
             ),
          ),
  
               InkWell(
            onTap: (){
              AppRoutes.push(context, LoginScreen());
            },
            child:  Container(
              
              height: MediaQuery.of(context).size.height/21,
              width: MediaQuery.of(context).size.width/6.5,
            decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(4),
              gradient: LinearGradient(
                colors: [Color(0xffE47C79),Color(0xffD04593)]
              )
            ),
            child:Center(
              child:  Text('Yes',
                 style: TextStyle(
              color: Colors.white
            )),
            )
           
             ),
          ),
        
   
         
     
        ],
      )
        ],
      )
   
    ),
  ),
 
       ),

    
  
 
      
    Align(
    alignment: Alignment.topCenter,
    child:Padding(child: Image.asset('images/toppopup.png',
  scale:5),padding: EdgeInsets.only(top: 12),),
  ),
    ],
  )
 
)
          ],
        );
      }
    );
  }
}