import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';
class Sellerinstantmessage extends StatefulWidget {
  @override
  _SellerinstantmessageState createState() => _SellerinstantmessageState();
}

class _SellerinstantmessageState extends State<Sellerinstantmessage> {
final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height / 12,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 8,
              ),
              Image.asset('images/chat1.png', scale:3.5),
              SizedBox(
                width: 5,
              ),
              Image.asset('images/chat2.png', scale:3.5),
              Container(
                margin: EdgeInsets.only(left: 14, top: 0),
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextField(
                  
                  decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "Type a message a here",
                    contentPadding: EdgeInsets.only(top: 5, left: 14),
                    hintStyle: TextStyle(
                        color: Colors.grey, ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(70)),
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
             
            ],
          ),
        ),
         key: _sellerscaffoldKey ,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top: 20),
          child: 
        
        SellerAppBarClass(context, false, _sellerscaffoldKey , 'INSTANT MESSAGE'),
        )  ),
      drawer: SellerDrawer(),
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 0),
              child:  ListView.builder(
                      itemCount:7,
                      itemBuilder: (BuildContext context, int index) =>
                          index.isOdd
                              ? sellerchatbox(1,
                               index)
                              : sellerchatbox(2, index)
                              )
                              ),
         
            Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              //   AppRoutes.push(context, Instantmessage());
                            },
                            child: Container(
                                margin: EdgeInsets.only(bottom: 07),
                                child: Image.asset(
                                  'images/plusstack.png',
                                  scale: 4.4,
                                )))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
      
    
  }
   Widget sellerchatbox(int val, int index) {
    return index==0?
    Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child:Text("Today  9:21",style: TextStyle(color:Colors.grey,fontSize:10),)):index==1?
    receiver(index):index==2?receiver(index):index==3?receiver(index):index==5?receiver(index):snder(index);
  }
  Widget receiver(index){
    return Column(
      children: <Widget>[
Container(
  
          padding: EdgeInsets.only(top: 10,left: 20,right: 0,bottom: 10),
          margin: EdgeInsets.only(top:10,left:MediaQuery.of(context).size.width*0.4,right:08),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(
                    0
                  ),
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(
              12
                  )),
              gradient: LinearGradient(
                colors: [
                  Color(index == 0 ? 0xffE47C79 : 0xffD04593),
                  Color(index == 0 ? 0xffD04593 : 0xffE14841)
                ],
              )),
          child: 
               Text(
                  'Lorem ipsum dolor sit amet, consectetur magna aliqua',
                  overflow: TextOverflow.visible,
                  style: TextStyle(color: Colors.white),
                ),

             ),
               Container(
          margin: EdgeInsets.only(right: 20),
          child:     Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
    Text('Delivered',
        textAlign: TextAlign.end,
        style:TextStyle(color: Colors.grey, fontSize:10,
      fontWeight:FontWeight.bold
      )
      )
          ],
        )
        )
      ],
    );


  }
  Widget snder(index){
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,width:2
            ),
            shape: BoxShape.circle
          ),
          margin: EdgeInsets.only(left: 14),
          child: Image.asset('images/lowerpartimage.png',
        scale: 2.4,)
        
     
        ),
      index==3&&index==4?
Container(
          padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
          margin: EdgeInsets.only(top:10,left:5),
         decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(
                    1
                  ),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(
                   8
                  )),
              gradient: LinearGradient(
                colors: [
                  Color(index == 0 ? 0xffE47C79 : 0xffD04593),
                  Color(index == 0 ? 0xffD04593 : 0xffE14841)
                ],
              )),
          child: 
               Text(
                  'dodfsdfsdffsdfkhjhjjdkfjkjffgfgfgfgfff',
                  overflow: TextOverflow.visible,
                  style: TextStyle(color: Colors.white),
                ),

             ):
             Container(
               margin: EdgeInsets.only(left: 20,top: 10),
               child:Image.asset('images/watercam.png',
             scale:5.1,
             ),
             
             )
           
      ],
    );
  }
}