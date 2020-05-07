import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:network/approuteclass.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';

import 'buyer/constants.dart';
import 'buyer/faq.dart';
import 'buyer/guides.dart';

class HelpCenter extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _State_Help();
  }

}

class _State_Help extends State<HelpCenter>
{
  final GlobalKey<ScaffoldState> _sellerscaffoldKey= new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _sellerscaffoldKey,
      // drawer: DrawerPage(context),
     appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),

child: SellerAppBarClass(context,false, _sellerscaffoldKey , 'HELP CENTER'),
        )
        ),
         drawer: SellerDrawer(),
      body: SingleChildScrollView(
        child:  Column(
          children: <Widget>[

            Container(
                margin: EdgeInsets.only(left: 50, right: 50,top: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.2,
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width/2,
                        child:Text('How can we help you?',textAlign: TextAlign.center,style: TextStyle(
                          color: blackColor,
                          fontSize: 30
                      ),), 
                      )
                      
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50,right: 50),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*.01,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xffCC3B97),
                                Color(0xffFBB85D),
                              ]
                          )
                      ),
                    )
                  ],
                )
            ),


            Container(
                margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.06,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.9,
                          spreadRadius: 1.0,
                          color: Colors.grey
                      )
                    ]
                ),

                child: Padding(
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
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Or Choose as option below',style: TextStyle(
                  color: Color(0xff29346E),
                  fontSize: 16,
                ),),


              ],
            ),

            _Options(context),

            _belowOptions(context)

          ],
        ),
      )
    );
  }

  Widget _Options(BuildContext context)
  {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(onTap: (){
            AppRoutes.push(context, Guides());
          },
          child: 
          Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.15,
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      color: Colors.grey
                  )
                ]
            ),

            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Image.asset('images/b.png',scale:6,),
                  ),

                  Text('Guides',style: TextStyle(
                    color:Color(0xff29346E),
                    fontWeight: FontWeight.bold,
                    fontSize: 26,


                  ),)

                ],
              ),
            ),
          ),
          ),
InkWell(
  onTap: (){
    AppRoutes.push(context,FAQ());
  },
  child: Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.15,
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      color: Colors.grey
                  )
                ]
            ),

            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Image.asset('images/qa.png',scale: 6),
                  ),

                  Text('FAQ',style: TextStyle(
                    color:Color(0xff29346E),
                    fontWeight: FontWeight.bold,
                    fontSize: 26,

                  ),)

                ],
              ),
            ),
          ),

),

         

          Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.15,
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      color: Colors.grey
                  )
                ]
            ),

            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Image.asset('images/1234.png',scale: 6,),
                  ),

                  Text('Community',style: TextStyle(
                    color:Color(0xff29346E),
                    fontWeight: FontWeight.bold,
                    fontSize: 26,

                  ),)

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }


  Widget _belowOptions (BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Getting Started',style: TextStyle(
                color: blackColor,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 20),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            textAlign: TextAlign.center,),
          )

        ],
      ),
    );
  }
}