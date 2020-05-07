import 'package:flutter/material.dart';
import 'package:network/Home.dart';
import 'package:network/buyer/personalinformation.dart';
import 'package:network/sellermode/notification.dart';

import 'package:network/sellermode/sellerhome.dart';
import 'package:network/sellermode/subscribe.dart';

import '../approuteclass.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  bool switchbutton1=true;
   bool switchbutton=true;
      bool switchbutton2=true;

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xff414141),
                height: MediaQuery.of(context).size.height/2,
                child: Column(children: <Widget>[
                  Container(
  margin: EdgeInsets.only(top: 35,left: 20),
  child: Row( 
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      InkWell(
          onTap: (){
            if(switchbutton2==true){
                AppRoutes.push(context, SellerPanel());
            }
            else{
              AppRoutes.push(context, Home());
          
            }
          },
          child:  Image.asset('images/backarrow.png',
  scale:4),
      ),

  Container(
    margin: EdgeInsets.only(right: 20),
   )
    ],
  )
 
),

Container(
  margin: EdgeInsets.only(top: 20),
  child:Column(
  children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         CircleAvatar(
           radius: 45,
           backgroundColor: Color(0xff414141),
           child: Image.asset('images/circular_image.png',
    scale: 2,),
         )
      ],
    ),
    Text('JOHN DOE',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16
    ),),
     Text('@john',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 18
    ),),
    Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width/4,
child: RaisedButton(
  color: Color(0xffFF0067),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      20
    )
  ),
  onPressed: (){},
  child: Text('LOGOUT',
  style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 13
    ),
  ),

),
    )
  ],
)
),


                ],),
              ),
            
             
SingleChildScrollView(
  child: 

Container(
  margin: EdgeInsets.only(left: 20,
  top: 20),
  child: Column(
    children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
 Text('SUBSCRIPTION PLAN',
      style:TextStyle(fontSize: 18,
      color: Color(0xff3B444B),
      fontWeight: FontWeight.bold
      
      )),
      InkWell(
        onTap: (){
         AppRoutes.push(context,Subscribeplan());
        },
        child: 
      
      Container(
        decoration: BoxDecoration(
        color: Color(0xffDB2B42),
          borderRadius: BorderRadius.circular(3)
        ),
        margin: EdgeInsets.only(right: 20),
      
        width: MediaQuery.of(context).size.width/4.5,
        height: MediaQuery.of(context).size.height/28, 
        child:Center(
          child: 
         Text('SUBSCRIBE',
        style:TextStyle(color: Colors.white,
        fontSize:12,
        fontWeight: FontWeight.bold)),
      ))
        )  ],
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 05),
            child: 
          
          Text('30 days',
          style: TextStyle(
            color: Color(0xff3B444B),
            fontWeight: FontWeight.bold,
            fontSize: 12
          )),),
          Padding(
            padding: EdgeInsets.only(left: 20,top:5),
            child: 
          
           Text('(25 days left)',
          style: TextStyle(
            color: Color(0xff6D6D6D),
            fontWeight: FontWeight.bold,
            fontSize: 10
          )),),

        ],
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 13),
            child:Text('OPTIONS',
      style:TextStyle(fontSize: 18,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold
      
           ) ))
        ],
      ),
       Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child:InkWell(
              onTap: (){
             AppRoutes.push(context,Notificationn());
              },
              child:Row(
              children: <Widget>[
Image.asset('images/notification.png',
scale:4),
SizedBox(width: 15,),
Text('Notification',
  style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )

  ),
  ],
  ),
            )  ),
          Container(
  margin: EdgeInsets.only(right: 20),
  child: Switch(
    value: switchbutton1,
    onChanged: (value){
      setState(() {
        
        switchbutton1=value;
      });
    },
    activeTrackColor: Color(0xffD8D8D8),
    activeColor: Colors.green,
  ),
),




 ],
      ),
      

 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
Image.asset('images/manuserr.png',
color: Colors.blue,
scale:4),
SizedBox(width: 15,),
Text('Seller Mode',
  style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )

  ),
              ],
            ),
          ),
          Container(
  margin: EdgeInsets.only(right:20),
  child: Switch(
    
    value: switchbutton2,
    onChanged: (value){
      setState(() {
        switchbutton2=value;
      });
    },
    activeTrackColor: Color(0xffD8D8D8),
    activeColor: Colors.green,
  ),
),



 ],
    
      ),
      Container(
        margin: EdgeInsets.only(top: 20,left: 0),
        child: Row(
        children: <Widget>[
 Text('Account',
      style:TextStyle(fontSize: 18,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold
      
      ))
        ],
      ),
      ),
      InkWell(
        onTap: (){
        AppRoutes.push(context, Personalinfofrmation());
      },
      child: 
      Container(
        margin: EdgeInsets.only(top: 20),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
Image.asset('images/manuserr.png',
scale:4),
SizedBox(width: 15,),
Text('Personal Information',
  style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )

  ),
              ],
            ),
          ),


Container(
  margin: EdgeInsets.only(right: 32),
  child: Row(
    
    children: <Widget>[
  InkWell(
    onTap: (){},
    child:  Image.asset('images/leftarow.png',
  scale:4)
  )
    ],
  )  
),
 ],
       ),
        
       ) ),
       Container(
         margin: EdgeInsets.only(top: 20),
         child: 
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 3),
            child: Row(
              children: <Widget>[
Image.asset('images/countryflag.png',
scale:4),
SizedBox(width: 15,),
Text('Country',
  style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold,
      )
  ),
              ],
            ),
          ),


Container(
  margin: EdgeInsets.only(right:29,),
  child: Row(
    children: <Widget>[
 Text('Azerbaijan',
   style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )
  ),
  SizedBox(width: 12,),
  InkWell(
    onTap: (){},
    child:  Image.asset('images/leftarow.png',
  scale:4)
  )

    ],
  )
),
 ],
      ),),
       
        Container(
         margin: EdgeInsets.only(top: 20),
         child: 
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 3),
            child: Row(
              children: <Widget>[
Image.asset('images/global.png',
scale:4),
SizedBox(width: 15,),
Text('Country',
  style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold,
      )
  ),
              ],
            ),
          ),


Container(
  margin: EdgeInsets.only(right:29,),
  child: Row(
    children: <Widget>[
 Text('English',
   style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )
  ),
  SizedBox(width: 12,),
  InkWell(
    onTap: (){},
    child:  Image.asset('images/leftarow.png',
  scale:4)
  )

    ],
  )
),
 ],
      ),),
       
        Container(
        margin: EdgeInsets.only(top: 20,left: 0),
        child: Row(
        children: <Widget>[
 Text('GENERAL',
      style:TextStyle(fontSize: 18,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold
      
      ))
        ],
      ),
      ),
       Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
Image.asset('images/fingerprint.png',
scale:4),
SizedBox(width: 15,),
Text('Touch ID and Passcode',
  style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )

  ),
  ],
  ),
    ),
          Container(
  margin: EdgeInsets.only(right: 20),
  child: Switch(
    value: switchbutton,
    onChanged: (value){
      setState(() {
        
        switchbutton=value;
      });
    },
    activeTrackColor: Color(0xffD8D8D8),
    activeColor: Colors.green,
  ),
),




 ],
      ),
 InkWell(
        onTap: (){
        AppRoutes.push(context, Personalinfofrmation());
      },
      child: 
      Container(
        margin: EdgeInsets.only(top: 10),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
Image.asset('images/padlock.png',
scale:4),
SizedBox(width: 15,),
Text('Privacy',
  style:TextStyle(fontSize: 14,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )

  ),
              ],
            ),
          ),


Container(
  margin: EdgeInsets.only(right: 32),
  child: Row(
    
    children: <Widget>[
  InkWell(
    onTap: (){},
    child:  Image.asset('images/leftarow.png',
  scale:4)
  )
    ],
  )  
),

 ],
       ),
        
       ) ),
       Container(
         margin: EdgeInsets.only(top:20),
  height:20
)
               
       
    ],
  ),
))
  ],
          ),
      ),
    
      ),
      
    );
  }
}