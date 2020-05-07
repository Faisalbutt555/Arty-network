import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';
class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
        final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
  key: _sellerscaffoldKey ,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top: 20),
child: 
        
        SellerAppBarClass(context, false, _sellerscaffoldKey , 'Friends'),
      )),
      drawer: SellerDrawer(),
      body: GridView.builder(
                scrollDirection: Axis.vertical,
                  itemCount:40,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return friends(
                       index==0?'images/messageman3.png.png':index==1?'images/b8.png':
                        index==2?'images/b1.png':index==3?'images/b4.png'
                       :'images/b6.png',
                       
                     index==0?'Designer':index==1?'Fashion Designer':index==2?'Programmer':
                     index==3?'Interior Designer':index==4?'Art & Craft':'Fashion Designer',
                     index
                  );
                  }),
    );
  }
   Widget friends (String img,String txt, index)
  {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 0,left: 8,right: 8),
      
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