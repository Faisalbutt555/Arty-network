import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';
class Teamrequest extends StatefulWidget {
  @override
  _TeamrequestState createState() => _TeamrequestState();
}

class _TeamrequestState extends State<Teamrequest> {
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
          padding: EdgeInsets.only(top:20),
          child: SellerAppBarClass(context,false, _sellerscaffoldKey , 'TEAM REQUEST'),
        )
        ),
      drawer: SellerDrawer(),
      body: 
      
      ListView.builder(
        itemCount: 24,
        itemBuilder: (BuildContext context,index)=>teamrequestcenterpart(
index==0?'images/im1.png':index==1?'images/im2.png':
index==2?'images/im3.png':index==3?'images/im4.png':
'images/im4.png',
index

        ),
      ),
      
    );
      
  }
  Widget teamrequestcenterpart(String img,index){
    return Card(
      margin: EdgeInsets.only(top: 7,left: 13,right: 13),

      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
    
      child: 
    Container(
      padding: EdgeInsets.only(left: 10,),
height: MediaQuery.of(context).size.height/7,
width: MediaQuery.of(context).size.width/2,
child: Column(
  children: <Widget>[
    SizedBox(height: 10,),
    Row(
      mainAxisAlignment:MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin:EdgeInsets.only(right: 20),
          child: 
        
        Text('10-01-2020',
      style: TextStyle(color: Colors.grey,
      fontSize: 7
      )
      ),)],
    ),
    Row(
      children: <Widget>[
        CircleAvatar(
          radius: 20,
          child: Image.asset('$img'),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
     Text('JOHN DOE',
        style:TextStyle(color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.bold,
        )),       
Text('John Doe send you a message request',
        style:TextStyle(color:Colors.grey,
        fontSize: 13  ,fontWeight: FontWeight.bold,
        )) 

          ],
        ) 
        )

      ],
    ),
Container(
  margin: EdgeInsets.only(right: 20,top: 3.1),
  child:Row(
mainAxisAlignment: MainAxisAlignment.end,  
children: <Widget>[

buttonpart(1,index),
SizedBox(
  width: 9,
),
buttonpart(2, index)

],
) 
)


  ],
),
    ),
    );
  }
  Widget buttonpart(int val,index){
    return InkWell(
      onTap: (){
        setState(() {
          
        });
      },
      child:Container(
  height: MediaQuery.of(context).size.height/27,
  width: MediaQuery.of(context).size.width/4.2,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    gradient: LinearGradient(
      colors: [
      val==1?  Color(0xffD04593):Colors.grey,
      val==1?Color(0xffE47C79):Colors.grey,
      
      ]
      
    )
  ),
  child: 
  Center(
    child: 
  Text(
    val==1?'Accept':'Reject',
    style: TextStyle(
    color:val==1?Colors.white:Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.bold
    ) ) ),),
);
  }
}