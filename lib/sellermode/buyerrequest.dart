import 'package:flutter/material.dart';
import 'package:network/buyer/constants.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';
class BuyerRequest extends StatefulWidget {
  @override
  _BuyerRequestState createState() => _BuyerRequestState();
}

class _BuyerRequestState extends State<BuyerRequest> {
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
          child: SellerAppBarClass(context,false, _sellerscaffoldKey , 'BUYER REQUEST'),
        )
        ),
      drawer: SellerDrawer(),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, index)=>ceterpart(
index==0?3:index==1?5:index==2?3:3,
index==0?80:index==1?60:index==2?60:60,
        index)
      )

      
    );
  }
  Widget ceterpart(int number,int budget,index){
    return Card(
      elevation: 10,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                
                  child: Row(
                    children: <Widget>[
  CircleAvatar(
                    radius:20,
                  backgroundColor: Colors.white,
                    child: Image.asset('images/buyerrequest.png',
                    scale: 3,),
                  ),
                  Text('John Doe',
                  style:TextStyle(color:Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold))
                    ],
                  )
                ),
                
                Container(
                  margin: EdgeInsets.only(right: 20),
child: Text('22-10-2020',
style: TextStyle(
  color: Colors.grey,
   fontSize: 8

),),
                )
    
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:  Text('Order Title',
                 style:TextStyle(color: blueColor,
                 fontSize: 14,
                 fontWeight: FontWeight.bold
                 )
                )
                )
               
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 5),
              child: Text('Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture adipsingelit Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  ',
              style: TextStyle(
                color:Color(0xff29346E),
                fontSize: 11,
                fontWeight: FontWeight.normal
              ),),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5,left: 10),
              child: Text('Duration:$number working Days',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10
              ),),
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Column(
                children: <Widget>[
                  Text('\$$budget',
                  style:TextStyle(fontSize:16,color:Colors.black,
                  fontWeight: FontWeight.bold
                  )),
                      Text('Budget',
                  style:TextStyle(fontSize:7,color:Colors.grey,
               
                  ))
                ],
              ),
            ),
        
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                       InkWell(
              onTap: (){},
              child:Container(
                margin: EdgeInsets.only(bottom: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                gradient: LinearGradient(
                  colors: [Color(0xffE9B369),Color(0xffCC3B97)]
                )
                ),
                height: MediaQuery.of(context).size.height/23,
                width: MediaQuery.of(context).size.width/3,
                child:
                Center(
                  child:
                 Text('ACCEPT',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 13,
                   fontWeight: FontWeight.bold
                 ),),
              ))),
              SizedBox(width: 20),
                     InkWell(
              onTap: (){},
              child:Container(
                margin: EdgeInsets.only(bottom: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
               color: Colors.grey
                ),
                height: MediaQuery.of(context).size.height/23,
                width: MediaQuery.of(context).size.width/3,
                child:
                Center(
                  child:
                 Text('REJECT',
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: 13,
                   fontWeight: FontWeight.bold
                 ),),
              )))
              ],
             ) )
       
              
            
          
          ],
        ),
      ),
    );
  }
}