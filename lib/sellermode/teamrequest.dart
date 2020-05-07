import 'package:flutter/material.dart';
import 'package:network/buyer/constants.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';
class TeamRequest extends StatefulWidget {
  @override
  _TeamRequestState createState() => _TeamRequestState();
}

class _TeamRequestState extends State<TeamRequest> {
    final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _sellerscaffoldKey ,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(60), // here the desired height
        child:SellerAppBarClass(context, false, _sellerscaffoldKey , 'Team Request'),
        ),
      drawer: SellerDrawer(),

      body: 
      
      ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context,index)=>centerpart(
index==0?'images/im1.png':index==1?'images/im2.png':
index==2?'images/im3.png':index==3?'images/im4.png':
'images/im4.png',
index

        ),
      ),
      
    );
  }
   Widget centerpart(String img,index){
    return Card(
      margin: EdgeInsets.only(top: 7,left: 13,right: 13),

      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
    

      child: 
    Container(
      padding: EdgeInsets.only(left: 10,),
height: MediaQuery.of(context).size.height/8.2,
width: MediaQuery.of(context).size.width/2,
child: Column(
  children: <Widget>[
    SizedBox(height: 10,),
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
        style:TextStyle(color: blueColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        )),       
Text('John Doe send you a message request',
        style:TextStyle(color:Colors.grey,
        fontSize: 15,fontWeight: FontWeight.bold,
        )) 

          ],
        ) 
        )

      ],
    ),
Container(
  margin: EdgeInsets.only(right: 50,top: 3.1),
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