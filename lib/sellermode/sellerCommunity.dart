import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network/buyer/constants.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';
class SellerCommunity extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _State_Comm();
  }

}

class _State_Comm extends State<SellerCommunity>
{
 final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sellerscaffoldKey,
  appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top:20),
          child: SellerAppBarClass(context,true, _sellerscaffoldKey , 'COMMUNITY'),
        )
        ),
        drawer: SellerDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
       Container(
         width: MediaQuery.of(context).size.width,
         margin: EdgeInsets.only(top: 10),
          child:Row(
            children: <Widget>[
              InkWell(
                onTap: (){
           //  _showDialog();
             
                },
                child:Container(
                 height: MediaQuery.of(context).size.height/8,
                 width: MediaQuery.of(context).size.width/4,
              //  width: 100,
               child: Image.asset('images/withsearchbar.png',
              scale:1,),
                ),
               ),
           
              Container(
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
                    child:TextFormField(
                    
                    decoration: InputDecoration(
                    
                        border: InputBorder.none,
                        hintText: 'SEARCH',
                        hintStyle: TextStyle(
                            color: Color(0xff29346E),
                            fontSize: 13
                        ),
                        contentPadding: EdgeInsets.only(left: 10,top:9),
                      suffixIcon: Image.asset('images/search.png',scale: 6,)
                    ),
                  ),
                
          )
            ],
          )
 ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('TEAM',style: TextStyle(
                      color: blueColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
            Image.asset('images/chitchat.png',
                  scale: 5,),
                
                ],
              )
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10,left: 10,right: 10,top: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  return _sellerProfile(
                    index==0?'images/amb1.png':index==1?'images/amb2.png':'images/messageman1.png',
                 index==0?'Photographer':index==1?'Comedian':index==2?'Comedian':'Crickter',
                  index
                  );
                },itemCount: 10,),
            ),

            Padding(
                padding: EdgeInsets.only(left: 20,top: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('FRIENDS',style: TextStyle(
                        color: blueColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                      Image.asset('images/chitchat.png',
                  scale: 5,),
                  ],
                )
            ),
 Container(
          margin: EdgeInsets.only(bottom: 0,top: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.6,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount:20,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return _FriendsProfile(
                       index==0?'images/messageman3.png.png':index==1?'images/b8.png':
                        index==2?'images/b1.png':index==3?'images/b4.png'
                       :'images/b6.png',
                       
                     index==0?'Designer':index==1?'Fashion Designer':index==2?'Programmer':
                     index==3?'Interior Designer':index==4?'Art & Craft':'Fashion Designer',
                     index
                  );
                  })
            ),



          ],
        ),
      ),
    );
  }

  Widget _sellerProfile (String img,String txt,index)
  {
    return Container(
      margin: EdgeInsets.only(top: 0,left: 8,right: 8),
      width: MediaQuery.of(context).size.width/3.7,
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
        color: Color(0xffFFFFFF),
      
      ),
      child: Column(
        children: <Widget>[
                 CircleAvatar(
            radius: 50,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            child: Image.asset('$img',scale: 3,),
          ),
        
          Text('JOHN DOE',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),),

SizedBox(height: 1,),
          Text('$txt',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 9,
              fontWeight: FontWeight.normal
          ),)

        ],
      ),
    );
  }


  Widget _FriendsProfile (String img,String txt, index)
  {
    return Container(
      margin: EdgeInsets.only(top: 16,bottom: 0,left: 8,right: 8),
  
  //    width: MediaQuery.of(context).size.width*.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
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
       CircleAvatar(
            radius: 40,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            child: Image.asset('$img',scale: 4.7,),
          ),
          
          Text('JOHN DOE',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),

          Text('$txt',style: TextStyle(
            color: Color(0xff29346E),
            fontSize: 9,
            
          ),)

        ],
      ),
    );
  }

}