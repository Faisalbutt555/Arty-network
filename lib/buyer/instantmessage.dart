import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerdrawer.dart';

import 'bar_drawer.dart';
class Instantmessage extends StatefulWidget {
  @override
  _InstantmessageState createState() => _InstantmessageState();
}

class _InstantmessageState extends State<Instantmessage> {
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
              Image.asset('images/chat1.png', scale: 3),
              SizedBox(
                width: 5,
              ),
              Image.asset('images/chat2.png', scale: 3),
              Container(
                margin: EdgeInsets.only(left: 14, top: 0),
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextField(
                  
                  decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "Type a message a here",
                    contentPadding: EdgeInsets.only(top: 5, left: 15),
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(70)),
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Image.asset('images/chat3.png', scale: 3.5),
            ],
          ),
        ),
       key: _sellerscaffoldKey ,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(60), // here the desired height
        child:AppBarClass(context, false, _sellerscaffoldKey , 'INSTANT MESSAGE'),
        ),
      drawer: SellerDrawer(),
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 0),
              child:  ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) =>
                          index.isOdd
                              ? chatbox(1,
                               index)
                              : chatbox(2, index)
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
                                  scale: 3.5,
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

  Widget chatbox(int val, int index) {
    return index==0?receiver(index):index==1?receiver(index):index==3?receiver(index):snder(index);
  }
  Widget receiver(index){
    return Column(
      children: <Widget>[
Container(
          padding: EdgeInsets.only(top: 10,left: 20,right: 10,bottom: 10),
          margin: EdgeInsets.only(top:10,left:MediaQuery.of(context).size.width*0.4),
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
                  'dodfsdfsdfsdfsdfsdfdf dfsdfsdfsdfsdf sdfsdfsdfsdf sdfsdfsdfsdf',
                  overflow: TextOverflow.visible,
                  style: TextStyle(color: Colors.white),
                ),

             ),
               Container(
          margin: EdgeInsets.only(right: 20),
          child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(height: 8,),
    Text('Delivered',
        textAlign: TextAlign.end,
        style:TextStyle(color: Colors.grey, fontSize:13,
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
          margin: EdgeInsets.only(left: 14),
          child:  Image.asset('images/lowerpartimage.png',
        scale: 2.4,),
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
               child:Image.asset('images/appIcon.png',
             scale:8.5,
             ),
             
             )
           
      ],
    );
  }

}
