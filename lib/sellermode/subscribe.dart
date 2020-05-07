import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/subscribepayment.dart';

class Subscribeplan extends StatefulWidget {
  @override
  _SubscribeplanState createState() => _SubscribeplanState();
}

class _SubscribeplanState extends State<Subscribeplan> {
  final GlobalKey<ScaffoldState> _sellerscaffoldKey =
      new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sellerscaffoldKey,
      // drawer: DrawerPage(context),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90), // here the desired height
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: SellerAppBarClass(
                context, false, _sellerscaffoldKey, 'SUBSCRIPTION PLAN'),
          )),
      body:centercall()
      
    );
  }
  Widget centercall(){
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount:6,
        itemBuilder: (BuildContext context,index)=>centerpart(
          index==0?25:65,
          index

        ),
      ),
    );
  }

  Widget centerpart(int number,index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      margin: EdgeInsets.only(left: 20, right: 20,top: 20),
      child: Container(
           decoration: BoxDecoration(
              color: Color(0xffFBFBFB),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(11),
                        bottomRight: Radius.circular(11)),
                        
                    ),
        height: MediaQuery.of(context).size.height/2.9,
        width: MediaQuery.of(context).size.width,
       child: Stack(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(11),
                        topLeft: Radius.circular(11)),
                        
                    gradient: index==0?
                    LinearGradient(
                        colors: [
                          Color(0xffD04593), Color(0xffE14841)
                          ]
                          ):index==1?
                           LinearGradient(
                        colors: [
                          Color(0xffD04593), Color(0xffE14841)
                          ]
                          ):index==2? LinearGradient(
                        colors: [
                          Color(0xffFEC129), Color(0xffDB4D0B)
                          ]
                          ):index==3? LinearGradient(
                        colors: [
                          Color(0xffFEC129), Color(0xffDB4D0B)
                          ]
                          ):index==4? LinearGradient(
                        colors: [
                          Color(0xff85CF7E), Color(0xff28B3B7)
                          ]
                          ): LinearGradient(
                        colors: [
                          Color(0xffD04593), Color(0xffE14841)
                          ]
                          )
                          )
                          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('SUBSCRIPTION PLAN',
                                style: TextStyle(
                                color: Colors.white, fontSize: 18)),
                          
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 47, left: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('1 Month',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 70, left: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          
                            Container(
                              height: MediaQuery.of(context).size.height*.12,
                              width: MediaQuery.of(context).size.width *.2,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width:1.3),
                                  gradient: index==0?
                                  LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                    Color(0xffFEC129),
                                    Color(0xffDB4D0B)
                                  ]
                                  ):index==1?    LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                    Color(0xff85CF7E),
                                    Color(0xff28B3B7)
                                  ]
                                  ):index==2?LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                    Color(0xff85CF7E),
                                    Color(0xff28B3B7)
                                  ]
                                  ):index==3?LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                    Color(0xff212121),
                                    Color(0xff28B3B7)
                                  ]
                                  ):index==3?LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                    Color(0xff212121),
                                    Color(0xff28B3B7)
                                  ]
                                  ):index==4?LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                    Color(0xff212121),
                                    Color(0xff28B3B7)
                                  ]
                                  ):  LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                    Color(0xffFEC129),
                                    Color(0xffDB4D0B)
                                  ]
                                  ),
                                  shape: BoxShape.circle),
                                  child: Center(
                                  child: Text('$number',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight:FontWeight.bold,
                                    fontSize: 29
                                  ),),
                                ),
                            ),
                      
                            
                          ],
                        )
                        ),
                          Padding(
                          padding: EdgeInsets.only(
                            top:155),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width/1.4,
                                  child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  dolore magna aliqua. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:9,
                            fontWeight: FontWeight.bold
                          )),),
                              ],
                            ) 
                        ),
                            Padding(
                          padding: EdgeInsets.only(
                            top:190),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(onTap: (){
                              AppRoutes.push(context,Subscribepayment());
                                },
                                child: 
                                Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: LinearGradient(
                                     colors: [
                                    Color(0xffD04593),
                                  Color(0xffE47C79)],
                                  )
                                ),
                                  width: MediaQuery.of(context).size.width/2,
                                  height: MediaQuery.of(context).size.height/20,
                                  child:Center(
                                    child: 
                                  
                                  Text('Purchase Package',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:14,
                            fontWeight: FontWeight.bold
                                   )   )),),
                                 ) ],
                            ) 
                        )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
