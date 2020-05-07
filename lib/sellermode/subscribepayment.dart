import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
class Subscribepayment extends StatefulWidget {
  @override
  _SubscribepaymentState createState() => _SubscribepaymentState();
}

class _SubscribepaymentState extends State<Subscribepayment> {
  bool chkbutton=false;
int bodyselector=1;

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             bottomNavigationBar: bodyselector<2? Container(
      height: MediaQuery.of(context).size.height/11,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Color(0xffD54B89)
        )],
      gradient: LinearGradient(
            colors: [Color(0xffE9B369),Color(0xffCC3B97)],
         ),
      ),
      child:Center(
        child:Text('PROCEED',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold

      )),),
      
           ):Container(height: 1,),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            toppart(),
             Container(
         margin: EdgeInsets.only(right: 30,left: 30),
        child: Column(
          children: <Widget>[
           // visa(),
bodyselector==1?Column(
  children: <Widget>[
visa(),
twodotpart(),
ppart(),
midlepart()

  ],
     ):
     bodyselector==2?Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
  visa(),
twodotpart(),

       addnewcard()
       ],
     )
     :bodyselector==3?Column(
     
       children: <Widget>[
         visa(),
         latestcard()
       ],
     ):visa()
        
          ],
        ),
       ) 
          ],
        ),
      ),
  
      
    );
  }
  Widget midlepart(){
    return Column(
      children: <Widget>[
    InkWell(
      onTap: (){
        setState(() {
          bodyselector=2;
        });
      },
          child: Image.asset('images/addcardbutton.png',
      scale: 4,),
    ),
    
       Image.asset('images/MaskGrouppp.png',
    scale: 5,),
    
      ],
    );
  }
    Widget latestcard(){
    return Column(
    children: <Widget>[
       Container(
         margin: EdgeInsets.only(top: 30),
         child: Image.asset('images/latestcard.png',
         scale: 4,),
       ),
InkWell(onTap: (){
  setState(() {
    bodyselector=1;
  });
},
child:
   Container(
          margin: EdgeInsets.only(top: 40),
         child: Image.asset('images/addsuccessful.png',
         scale: 4,),
       ) )
     
      ],
    );
  }
    Widget ppart(){
    return 
                      Card(
              margin: EdgeInsets.only(left:0,top: 20),
              elevation: 20,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
      Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Image.asset('images/Ellipse70.png',
                    scale:4)
                    ),
                               Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                     Text('xxxx-6650',
                      style:TextStyle(color: Color(0xff2F8FFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      )),
                         Text('Expiring Soon!',
                      style:TextStyle(
                        
                      fontSize: 9,
                      color:Colors.red,
                      fontWeight: FontWeight.bold
                      )),
                        ],
                      )
                       
                    ),
                      ],
                    ),
              
                     Container(
                      margin: EdgeInsets.only(right:20),
                      child:Image.asset('images/ppp.png',
                    scale:4)
                    ),
      
                    
                  ],
                ),
              ),
            );
  }
    Widget twodotpart(){
    return             Card(
              margin: EdgeInsets.only(left: 0,top: 10),
              elevation: 20,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                                   Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Image.asset('images/Ellipse70.png',
                    scale:4)
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                     Text('xxxx-6650',
                      style:TextStyle(color: Color(0xff2F8FFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      )),
                         Text('Expiring Soon!',
                      style:TextStyle(
                        
                      fontSize:9,
                      color:Colors.red,
                      fontWeight: FontWeight.bold
                      )),
                        ],
                      )
                       
                    ),
                      ],
                    ),
         
                     Container(
                      margin: EdgeInsets.only(right: 20),
                      child:Image.asset('images/mastercard.png',
                    scale:4)
                    ),
      
                    
                  ],
                ),
              ),
            );
  }
    Widget visa(){

    return  Card(
              margin: EdgeInsets.only(left: 0,top: 30),
              elevation: 20,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
       Container(
                      margin: EdgeInsets.only(left: 20),
                      child:Image.asset('images/googtick.png',
                    
                    scale:4,
                    )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('xxxx-9150',
                      style:TextStyle(color: Color(0xff2F8FFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      )),
                    ),
                      ],
                    ),
             
                     Container(
                      margin: EdgeInsets.only(right: 20),
                      child:Image.asset('images/visa.png',
                    scale:4)
                    ),
                  ],
                ),
              ),
            );
  }
    Widget upperpart(){
    return  Container(
      margin: EdgeInsets.only(left: 30,right: 0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
upperpart(),
twodotpart(),
ppart(),

           
                ],
              ),
            );
  }
    Widget addnewcard(){
    return Card(
      margin: EdgeInsets.only(top: 13),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
      // decoration: BoxDecoration(
      //     boxShadow: [
      //     BoxShadow(
      //       color: Colors.blue
      //     )
      //     ]
      //   ),
        height: MediaQuery.of(context).size.height/2.1,
        width: MediaQuery.of(context).size.width/1.4,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30,top: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset('images/mastercard.png',
                scale: 5,)
              ],
            ),),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
              children: <Widget>[
   Text('card Number',
   style: TextStyle(
     color: Colors.grey
   ),)
              ],
            )
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: '4120 4554 2134 9140',
    hintStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
    )
  ),
)
            ),
                 Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 15),
              child: TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: 'CARD HOLDER NAME',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 14,
    )
  ),
)
            ),
            Container(
              child: Row(
                children: <Widget>[
       Container(
              width: MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.only(left: 10,right: 10,top: 15),
              child: 
              TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: '  MM',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12,
    )
  ),
)
            ),       Container(
              width: MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.only(left: 10,right: 10,top: 15),
              child: 
              TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: '   YY',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12,
    )
  ),
)
            ),
                   Container(
                     margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.only(left: 10,right: 10,top: 15),
              child: 
              TextField(
  decoration: InputDecoration(
    //border: InputBorder.none,
    hintText: ' CVV',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 12,
    )
  ),
)
            ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 16),
              child: Row(
                children: <Widget>[
                  Text('CANCLE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),),
                  InkWell(
                    onTap: (){
                      setState(() {
                        bodyselector=3;
                      });
                    },
                    child:Container(
                    margin: EdgeInsets.only(left: 20),
                    child: 
                   Image.asset('images/miniaddcard.png',
                  scale:5))
                  )
                
                 
                ],
              ),
            )
     
            
            
          ],
        ),
      ),
    );
  }
  Widget toppart(){
    return  Container(
      height: MediaQuery.of(context).size.height/6.2  ,
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22)),
            color:Color(0xff414141)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(onTap: (){
              AppRoutes.pop(context);
            },
            child:
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Image.asset('images/specialback.png',
              scale: 3,),
            )),
            
            Text('SELECT PAYMENT METHOD',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize:18
            ),),
            Container(
              margin: EdgeInsets.only(right:20),
            )
          ],
        ),
        );
  }
}