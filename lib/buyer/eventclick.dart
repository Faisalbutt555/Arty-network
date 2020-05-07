
import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
class Eventclick extends StatefulWidget {
  @override
  _EventclickState createState() => _EventclickState();
}

class _EventclickState extends State<Eventclick> {
  int val=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff414141),
                   borderRadius: BorderRadius.only(
                     bottomLeft:Radius.circular(32),
                    bottomRight:Radius.circular(32)
                   )
                  ),
                
                height: MediaQuery.of(context).size.height/5,
                child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Container(
  margin: EdgeInsets.only(top:50,left: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      InkWell(
          onTap: (){
            AppRoutes.pop(context);
          },
          child:  Image.asset('images/specialback.png',
  scale:3),
      ),
Text('EVENTS',
style:TextStyle(color: Colors.white,
fontSize:18,
fontWeight: FontWeight.bold))
,  Container(
    margin: EdgeInsets.only(right: 20),
    )
    ],
  )
 
),
Container(
  margin: EdgeInsets.only(left: 30),
  child:Row(
  children: <Widget>[
    InkWell(
      onTap: (){
        setState(() {
          val=1;
        });
      },
      child: 
    
    Container(
      child:Column(
      children: <Widget>[
  Text('Event Feed',
      style:TextStyle(
        //fontWeight: FontWeight.bold,
      fontSize: 18,
      color:Colors.white
    ),
    ),
    Container(
      
      child: Text('___________',style: TextStyle(

        color: val==1?Colors.white:Color(0xff414141),
        fontWeight: FontWeight.bold
      ),),
    )

      ],
      )  ) ),
      SizedBox(
        width: 20,
      ),
       InkWell(
      onTap: (){
        setState(() {
          val=2;
        });
      },
      child: 
    
    Container(
      child:Column(
      children: <Widget>[
  Text('Event Detail',
      style:TextStyle(
        //fontWeight: FontWeight.bold,
      fontSize: 18,
      color:Colors.white
    ),
    ),
    Container(
    child: Text('___________',style: TextStyle(
    color: val==2?Colors.white:Color(0xff414141),
        fontWeight: FontWeight.bold
      ),),
    )

      ],
      )  ) ),
  ],
)
)



                ],),
              ),
             val==1?eventfeed():eventdetail()


         ],
       ),
     ), 
    );
  }
  Widget eventdetail(){
return SingleChildScrollView(
  child:Column(
  children: <Widget>[
    Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 16,right: 16,top:12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          22
        )
      ),
      child: Container(
height: MediaQuery.of(context).size.height/3,

child: Column(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top: 5),
      child:
    
    Row(
      children: <Widget>[
        Container(
          child:CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
          child: Image.asset('images/man1.png'),
        ), 
        ),
        Container(
          width: MediaQuery.of(context).size.width/1.3,
          child: 
        
     Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Container(
    child: 
  
             Column(
          children: <Widget>[
            Text('John Doe',
            style:TextStyle(color: Colors.black,
            fontWeight:FontWeight.bold)
              ) ,
              SizedBox(width: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
 Image.asset('images/shield.png',
              scale:2.5),
              Text('Public',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
              Icon(Icons.arrow_drop_down)
              ],),
              
             
               ],
 
  )
  ),
  Container(
    child:  Column(
          children: <Widget>[
            Text('20-5-2019',
            style:TextStyle(color: Colors.grey,
            fontWeight:FontWeight.bold,
            fontSize: 9,
            )
              ),
              Container(
                child: Stack(
                  children: <Widget>[
    Image.asset('images/Rectanglecontainer.png',
              scale:4),
              Container(
margin: EdgeInsets.only(left:5),
                child:Text('Paid',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold
               ) ),)
                  ],
                ),
              )
          
   ],
 
  )
  ),
         
],
       
             )     ),
        
    

          ],
       )  
        ),
    Image.asset('images/withbuttonimage.png'),
   Container(
     margin: EdgeInsets.only(left: 20),
     child:Row(
    children: <Widget>[
      Text('Lorem ipsum',
      style:TextStyle(fontWeight: FontWeight.bold,
      color: Colors.black,      
      fontSize: 11)),

    ],
  ),
 ),
    Container(
      margin: EdgeInsets.only(left: 20),
      child:Text('Lorem ipsum dolor sit amit consectetuter,Lorem ipsum dolor sit amit consectetuter, elit sed sit amit consectetuter,Lorem ipsum dolor ',
      style:TextStyle(
        color: Colors.grey,      
      fontSize: 11)),
    )
 
    ],
),
 ),
    ),
    Card(
         margin: EdgeInsets.only(left: 0,top: 10),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      ),
      child: Container(
   
      height:MediaQuery.of(context).size.height/16,
      width:MediaQuery.of(context).size.width/1.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width/3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Admin',
            style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 13,
              color:Colors.black
              )),
                Text('John Doe',
            style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 13,
              color:Colors.black
              ))
          ],
        ),
      ),
          Container(
            margin: EdgeInsets.only(right: 20),
        width: MediaQuery.of(context).size.width/4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
       Image.asset('images/sharelink.png',
       scale:4,),
                Text('Share Link',
            style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 13,
              color:Colors.black
              ))
          ],
        ),
      ) 
    ],
      ),
      ),
    ),
    discriptionlocation('Description','This is the public event anyone can see the event, RSVP, or invite others to this event'),
    discriptionlocation('Location','Lorem ipsum dolor sit amet, consectetur t labore et dolore magna aliqua'),
//description and location


     Card(
       elevation: 9,
         margin: EdgeInsets.only(left: 0,top: 10),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Container(
      height:MediaQuery.of(context).size.height/14,
      width:MediaQuery.of(context).size.width/1.1,
      child:Padding(padding: EdgeInsets.only(left:20,right:20),
      child: 
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
     
            Text('Paid Event',
            style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 15,
              color:Colors.black,
              )),
            
                Text('\$50',
            style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 13,
              color:Colors.black
              ))
         
          
      
    
    ],
       ) ),
      ),
    ),
     Card(
       elevation: 9,
         margin: EdgeInsets.only(left: 0,top: 10),
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Container(
   
      height:MediaQuery.of(context).size.height/16,
      width:MediaQuery.of(context).size.width/1.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width/2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Date',
            style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 13,
              color:Colors.black
              )),
                Text('21may to 27 may',
            style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 13,
              color:Colors.black
              ))
          ],
        ),
      ),
    
    ],
      ),
      ),
    ),
        Card(
      elevation: 5,

      margin: EdgeInsets.only(top: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13)
      ),
      child:Container(
        height:MediaQuery.of(context).size.height/4,
        width:MediaQuery.of(context).size.width/1.1,
        child:Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/16,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffD04593),Color(0xffE14841)]
              )
            ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('Guestlist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,

                  ),),
                ),

              ],
            )  
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 0),
             height: MediaQuery.of(context).size.height/8,
            width: MediaQuery.of(context).size.width,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 19,
               itemBuilder: (BuildContext context,index)=>guestlist(
                 index==0?'images/guest1.png':index==1?'images/guest2.png':index==2?'images/guest3.png':index==3?'images/guest4.png':index==4?'images/guest5.png':'images/guest1.png',
                 index==0?'christina':index==1?'Mark':index==2?'Denish':index==3?'Michal':index==4?'chris':'Michal',
                  index),
             ),
            
            ),
            Padding(
              padding: EdgeInsets.only(left:20,right:20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('18/50',
                    style: TextStyle(
color: Colors.black,
fontSize: 11,
fontWeight:FontWeight.bold

                    ),),
                    Container(
                      margin: EdgeInsets.only(top:5),
                      height: 30,
                      width: 50,
                      child:Column(
                      children: <Widget>[
        Text('See all',
                     style: TextStyle(
color: Colors.black,
fontSize:11,
fontWeight:FontWeight.bold

                    ),),
                    Text("_________",
                    style: TextStyle(
                      fontSize:8,
                      color: Colors.black,
                      fontWeight: FontWeight.bold

                    ),) 
                 
                      ],
                    
               
                    ))
                ],
              ),
            )
        ],
       ) ),
    ),
    Container(
      margin: EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
       Container(
            height: MediaQuery.of(context).size.height/20,
            width: MediaQuery.of(context).size.width/2.4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
               colors:
                [Color(0xffD04593),Color(0xffE14841)]
              ),
  ),
            child: Center(
              child:Text('Edit Event',
              style: TextStyle(color:
             Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold)
            )
            ),
              ) ,

                     Container(
            height: MediaQuery.of(context).size.height/20,
            width: MediaQuery.of(context).size.width/2.4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
               colors:
                [Color(0xffD04593),Color(0xffE14841)]
              ),
  ),
            child: Center(
              child:Text('Cancel Event',
              style: TextStyle(color:
             Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold)
            )
            ),
              )   
        ],
      ),
    )

  
  ],
));
  }
  Widget guestlist(String img,String txt,index){
    return  Column(

  children: <Widget>[
    Container(
      child:Image.asset('$img',
    scale: 4,)),
    Text('$txt',
    style: TextStyle(
      fontSize: 9,
      fontWeight: FontWeight.bold
    ),)
  ],

    );
  }
  Widget eventfeed(){
    return Column(
      children: <Widget>[
Card(
  elevation: 10,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(9)
  ),
  margin: EdgeInsets.only(left: 20,right: 20,top: 24),
  child: Container(
    
    //width: MediaQuery.of(context).size.width/1.2,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 05),
          child: CircleAvatar(
            radius:30,
            backgroundColor: Colors.white,
            child: Image.asset('images/doll1.png',
            ),
          ),
        ),
        Container(
          height:MediaQuery.of(context).size.height/23.9,
          margin: EdgeInsets.only(left: 10),
          width: MediaQuery.of(context).size.width/1.6,
          child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 50),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            hintText: 'Whats on your mind?',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 9,
              fontWeight: FontWeight.bold,
            

            )
           )   ),
        )
      ],
    ),
  ),
),
calinglstbuilder(),




      ],
    );

  }
  Widget calinglstbuilder(){
    return Container(
      height: MediaQuery.of(context).size.height,
      child:ListView.builder(
itemCount: 10,
itemBuilder: (BuildContext context, index)=>lst(),
     ) );
  }
  Widget lst(){
    return Card(
child: Container(
  height: MediaQuery.of(context).size.height/2.5,
  child: Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('images/doll2.png',
              scale: 2,),

              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text('John Doe',
                   style:TextStyle(fontWeight: FontWeight.bold,
                   color:Colors.black,
                   fontSize: 15)),
                   Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
     Text('22-05-2019',
                   style:TextStyle(fontWeight: FontWeight.bold,
                   color:Colors.grey,
                   fontSize: 11)),
                   SizedBox(width: 6,),
                        Text('at',
                   style:TextStyle(fontWeight: FontWeight.bold,
                   color:Colors.grey,
                   fontSize: 11)),
                    SizedBox(width: 6,),
                        Text('12:00am',
                   style:TextStyle(fontWeight: FontWeight.bold,
                   color:Colors.grey,
                   fontSize: 11))
                     ],
                   )
              

                ],
              ),
            )

          ],
        ),
      ),
         Container(
     margin: EdgeInsets.only(left: 20,top: 10),
     child:Row(
    children: <Widget>[
      Text('Lorem ipsum',
      style:TextStyle(fontWeight: FontWeight.bold,
      color: Colors.black,      
      fontSize: 14)),

    ],
  ),
 ),
     Container(
      margin: EdgeInsets.only(left: 20),
      child:Text('Lorem ipsum dolor sit amit consectetuter,Lorem ipsum dolor sit amit consectetuter, elit sed sit amit consectetuter,Lorem ipsum dolor ',
      style:TextStyle(
        color: Colors.grey,      
      fontSize: 11)),
    ),
SizedBox(height: 5,),
    Image.asset('images/dollmain.png',
    scale:4.3,),
    Container(
      margin: EdgeInsets.only(top:12,left: 30),
      child:
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
 Image.asset('images/dollheart.png',
scale:4),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          color: Colors.pink,
          child: Container(
        width: MediaQuery.of(context).size.width/17,
            child:Center(
            child: Text('11',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.bold
            ),),
          ),
         ) ),
            ],
          ),
        ),

Container(
  margin: EdgeInsets.only(right: 20),
  child:Row(
           children: <Widget>[
      CircleAvatar(
        radius:15,
        backgroundColor: Colors.pink,
        child: Stack(
          children: <Widget>[
            Image.asset('images/dollmsgprt.png',
            scale:4,)
          ],
        ),
      ),
           Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          color: Colors.pink,
          child: Container(
            width: MediaQuery.of(context).size.width/17,
            child:Center(
            child: Text('5',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.bold
            ),),
          ),
         ) )
           ],
     )     )


      ],
     ) )
    ],
  ),
),
    );
  }
  Widget discriptionlocation(String txt,String txt2){
    return     Card(
      elevation: 5,
      margin: EdgeInsets.only(top: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9)
      ),
      child:Container(
        
        height:MediaQuery.of(context).size.height/6,
        width:MediaQuery.of(context).size.width/1.1,
        child:Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/21,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffD04593),Color(0xffE14841)]
              )
            ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('$txt',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,

                  ),),
                ),
                     Container(
                       margin: EdgeInsets.only(right: 10,top: 5),
                  child:Column(
                    children: <Widget>[
 Image.asset('images/edit.png',
 scale:4.5,),
 Text('edit',
 style: TextStyle(
   color: Colors.white,
   fontWeight: FontWeight.bold,
   fontSize:7
  
 ),)
                    ],
                  )
                  
                 
                )
              ],
            )  
            ),
            Container(
              margin: EdgeInsets.only(left: 50,right: 30,top: 30),
              width: MediaQuery.of(context).size.width/1.2,
              child: Text('$txt2',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12

              ),),
            )
        ],
       ) ),
    );
  }
}