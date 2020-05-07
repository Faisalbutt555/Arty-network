
import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
import 'package:network/buyer/eventclick.dart';
import 'package:network/sellermode/eventmapclass.dart';

import 'eventpluspic.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
    final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();
int val=1;
int val2=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      bottomNavigationBar: bottompart(),
    floatingActionButton: val==1?plusimage():Container(),
      
    body: SingleChildScrollView(
      child: 
    val==1?
        Column( 
          children: <Widget>[

       maintopappbar('EVENTS'),
        searchbarpar(),
        lisitofevent(),
          ],
      
      ) :
      Column(
children: <Widget>[
  top1('MY EVENTS'),
   myevents()
],
      ),
    
  
      ),
      
    );
  }
  Widget plusimage(){
    return  Container(
      height: MediaQuery.of(context).size.height/12,
      width: MediaQuery.of(context).size.width/8,
      child:FloatingActionButton(

        backgroundColor: Colors.pink,
        
        onPressed: (){
          AppRoutes.push(context, Pluspic());
        },
        child: Icon(Icons.add,),

    ));
  }

  Widget maintopappbar(String txt){
    return Container(
height:MediaQuery.of(context).size.height/6,
width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
                    color: Color(0xff414141),
  borderRadius: BorderRadius.only(
    bottomLeft:Radius.circular(23),
      bottomRight:Radius.circular(23),
  )
),
child:Container(
  margin: EdgeInsets.only(top:25),
  child: 

 Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
 Container(
   margin: EdgeInsets.only(left: 20),
   child: 
 
      InkWell(
          onTap: (){
            AppRoutes.pop(context);
          },
          child:  Image.asset('images/specialback.png',
  scale:3),
  ) ),
Text('$txt',
style:TextStyle(color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold))
,  Container(
    margin: EdgeInsets.only(right: 20),
    child: InkWell(
    onTap: (){
      AppRoutes.push(context, Eventlocation());
    },
    child:Image.asset('images/MAPLOCATION.png',
    scale: 4,),
))
    ],
  )
 

  

    ));
  }
  
  Widget bottompart(){
    return  Row(
        children: <Widget>[
          InkWell(
            onTap: (){
      
              setState(() {
              val=1;
              });
            },
            child:Container(
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
               colors:
                [
               val==2?Color(0xffFFFFFF): Color(0xffD04593),val==2?Color(0xffFFFFFF):Color(0xffE14841)]
              ),
  ),
            child: Center(
              child:Text('TIMELINE',
              style: TextStyle(color: val==2?Colors.black:Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold)
            )
            ),
              )    
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    val=2;
                  });
                },
                child:Container(
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[val==1?Color(0xffFFFFFF):Color(0xffD04593),val==1?Color(0xffFFFFFF):Color(0xffE14841)]
              ),
              
            ),
            child: Center(
              child:Text('MY EVENTS',
               style: TextStyle(color: val==1?Colors.black:Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold)
            )
            ),
                 )   ),

        ],
      );
  }
  Widget top1(String txt){
    return Container(
height:MediaQuery.of(context).size.height/5.5,
width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
                    color: Color(0xff414141),

  borderRadius: BorderRadius.only(
    bottomLeft:Radius.circular(23),
      bottomRight:Radius.circular(23),
  )
),
child:Container(
  margin: EdgeInsets.only(top:13),
  child:Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
Container(
  margin: EdgeInsets.only(left:12),
  child: 
CircleAvatar(
  radius: 15,
  backgroundColor: Colors.pink,
child: IconButton(
  onPressed: (){
    AppRoutes.pop(context);
  },
  icon: Icon(Icons.arrow_back_ios,
  size: 14,),
),
)),
Text('$txt',
style:TextStyle(color: Colors.white,
fontSize:18,
fontWeight: FontWeight.bold))
,  Container(
    margin: EdgeInsets.only(right: 20),
    )
    ],
  ))
 

  

    );
  }
Widget myevents(){
  return Column(
    children: <Widget>[
Container(
  decoration: BoxDecoration(
    color: Color(0xffCCCCCC),
      borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(11),
            bottomRight: Radius.circular(11),
            topLeft: Radius.circular(11),
            topRight: Radius.circular(11),
          ),
  ),
  margin: EdgeInsets.only(top: 10),
height: MediaQuery.of(context).size.height/14,
width: MediaQuery.of(context).size.width/1.7,

  child: Row(
    children: <Widget>[
      InkWell(
        onTap: (){
          setState(() {
           val2=1;
          });
        },
        child: 
      
      Container(
        margin: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height/18,
        width: MediaQuery.of(context).size.width/4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          gradient: LinearGradient(
            colors: [
              val2==1?Color(0xffD04593):Color(0xffCCCCCC) , val2==1?Color(0xffE14841):Color(0xffCCCCCC),
              ]
          )
        ),
        child: Center(
          child: 
  
Text('Manage',
        style:TextStyle(
          color: val2==1?Colors.white:Colors.black,
                    fontWeight: FontWeight.bold,
          fontSize: 15
   )    )),
      )
      ),
       InkWell(
        onTap: (){
          setState(() {
            val2=2;
          });
        },
        child: 
      
            Container(
        margin: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height/18,
        width: MediaQuery.of(context).size.width/4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
         bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          gradient: LinearGradient(
            colors: [
              val2==2?Color(0xffD04593):Color(0xffCCCCCC) ,val2==2?Color(0xffE14841):Color(0xffCCCCCC),
              
              ]
          )
        ),
        child:Center(
          child:Text('Attending',
        style:TextStyle(
          color: val2==2?Colors.white:Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15
           )   )),
          )   )
    ],
  ),
),
  val2==1? managepartgrid():attendinfpartgrid()

    ],
  );
}

Widget attendinfpartgrid(){
  return Container(
    margin: EdgeInsets.only(right:10,left: 10,top:10),
    height: MediaQuery.of(context).size.height/1,
child:GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 0.7
  ),
  itemCount: 3,

  scrollDirection: Axis.vertical,
  itemBuilder: (BuildContext context,index)=>attendingpart(
     index==0?'images/managerecaanglepart.png':index==1?'images/imgmaange1.png':index==2?'images/img2manange2.png':index==3?'images/img3manage3.png':index==4?'images/imgmanage4.png':index==5?'images/imgmanange5.png':index==6?'images/imgmanage6.png':'images/imgmanage6.png',
    index
  ),
),
  );
}
Widget attendingpart(String img,index){
  return Card(
      elevation: 10,
      margin: EdgeInsets.only(top: 7,left:2,right:2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          2
        )
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
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
          radius: 18,
          child: Image.asset('images/man1.png'),
        ), 
        ),
        Container(
          //width: MediaQuery.of(context).size.width/2,
          child: 
        
     Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Container(
    child:Column(
          children: <Widget>[
            Text('John Doe',
            style:TextStyle(color: Colors.black,
            fontWeight:FontWeight.bold)
              ) ,
              SizedBox(width: 15,),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
 Image.asset('images/shield.png',
              scale:4),
              SizedBox(width:2),
              Text('Private',
              style: TextStyle(
                color: Colors.black,
                fontSize:7,
               
              ),),
              Icon(Icons.arrow_drop_down,
              color: Colors.grey,)
              ],),
              
             
               ],
 
  )
  ),
  Container(
    margin: EdgeInsets.only(left:20),
    child:Column(
          children: <Widget>[
            Text('20-5-2019',
            style:TextStyle(color: Colors.black,
            fontWeight:FontWeight.bold,
            fontSize:7,
            )
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                child: Stack(
                  children: <Widget>[
    Image.asset('images/Rectanglecontainer.png',
              scale:5),
              Container(
margin: EdgeInsets.only(left:5),
                child:Text('Paid',
              style: TextStyle(
                fontSize: 11,
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
       )
       ),
    ],
       )  
        ),
       
        
    Image.asset('$img',
   width: 156,
    ),
   Container(
     margin: EdgeInsets.only(left: 20,top:4),
     child:Row(
    children: <Widget>[
      Text('Lorem ipsum',
      style:TextStyle(fontWeight: FontWeight.bold,
      color: Colors.black,      
      fontSize: 12)),

    ],
  ),
 ),
    Container(
      margin: EdgeInsets.only(left: 20,top: 5),
      child:Text('Lorem ipsum dolor sit amit consectetuter, elit sed sit amit consectetuter,Lorem ipsum dolor Lorem ipsum dolor sit amit consectetuter',
      style:TextStyle(
        color: Colors.grey,      
      fontSize:7)),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffD04593),Color(0xffE14841)]
            )
          ),
          margin: EdgeInsets.only(top:10),
          width: MediaQuery.of(context).size.width/3,
          height:MediaQuery.of(context).size.height/31,
          
   child:Center(
            child:Text('Attende',
            style:TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight:FontWeight.bold
            )),
          )  )
      ],
    )
 
    ],
    
  
),
 ),
    );
}
Widget managepartgrid(){
  return Container(
    margin: EdgeInsets.only(left:4),
    height: MediaQuery.of(context).size.height,
child:GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount:2,
    childAspectRatio: 0.7
  ),
  itemCount:13,
  
  scrollDirection: Axis.vertical,
  itemBuilder: (BuildContext context,index)=>managepart(
    index==0?'images/managerecaanglepart.png':index==1?'images/imgmaange1.png':index==2?'images/img2manange2.png':index==3?'images/img3manage3.png':index==4?'images/imgmanage4.png':index==5?'images/imgmanange5.png':index==6?'images/imgmanage6.png':'images/imgmanage6.png',
    index
  ),
  
),
  );
}
Widget managepart(String img,index){
  return Card(
     elevation: 10,
      margin: EdgeInsets.only(top:04,left:03,right:03,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          2
        )
      ),
      child: Container(

        height: MediaQuery.of(context).size.height,
child: Column(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top: 5),
      child:Row(
      children: <Widget>[
        Container(
          child:CircleAvatar(
          backgroundColor: Colors.white,
          radius: 18,
          child: Image.asset('images/man1.png'),
        ), 
        ),
        Container(
          //width: MediaQuery.of(context).size.width/2,
          child: 
        
     Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
  Container(
    child:Column(
          children: <Widget>[
            Text('John Doe',
            style:TextStyle(color: Colors.black,
            fontWeight:FontWeight.bold)
              ) ,
              SizedBox(width: 15,),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
 Image.asset('images/shield.png',
              scale:4),
              SizedBox(width: 2,),
              Text('Private',
              style: TextStyle(
                color: Colors.black,
                fontSize:7,
               
              ),),
              Icon(Icons.arrow_drop_down,
              color: Colors.grey,)
              ],),
              
             
               ],
 
  )
  ),
  Container(
    margin: EdgeInsets.only(left:30),
    child:Column(
          children: <Widget>[
            Text('20-5-2019',
            style:TextStyle(color: Colors.black,
            fontWeight:FontWeight.bold,
            fontSize:7
            )
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                child: Stack(
                  children: <Widget>[
    Image.asset('images/Rectanglecontainer.png',
              scale:4.5),

              Container(
margin: EdgeInsets.only(left:5),
                child:Center(
                  child: 
                
                Text('Paid',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold
              )) ),)
                  ],
                ),
              )
          
   ],
 
  )
  ),
         
],
       )
       ),
    ],
       )  
        ),
       
        
    Image.asset('$img',
   width: 180,
   
    ),
   Container(
     margin: EdgeInsets.only(left:20,top: 5),
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
      margin: EdgeInsets.only(left: 20,top: 4),
      child:Text('Lorem ipsum dolor sit amit consect, elit sed sit amit conuter,Lorem ipsum dolor Lorem ipsum dolor sit amit  ',
      style:TextStyle(
        color: Colors.grey,      
      fontSize: 9)),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:14),
          width: MediaQuery.of(context).size.width/3,
          height:MediaQuery.of(context).size.height/31,
  color: Color(0xffCCCCCC),         
   child:Center(
            child:Text('Manage'),
          )  )
      ],
    )
 
    ],
    
  
),
 ),
    );
}

  Widget searchbarpar(){
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
            children: <Widget>[
          Container(
               margin: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width/1.5,
                height: MediaQuery.of(context).size.height/19,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(02)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.9,
                      spreadRadius: 1.0,
                      color: Colors.grey
                    )
                  ]
                ),
                    child: 
                Padding(
                  padding: EdgeInsets.only(top: 0,left: 0,right: 5),
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '            Search Event',
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize:12
                        ),  
                        contentPadding: EdgeInsets.only(top: 3,left: 3)
                      //suffixIcon: Image.asset('images/search.png',scale: 5,)
                    ),
                  ),
                )
          ),
                InkWell(
                onTap: (){
           //  _showDialog();
             
                },
                child:   Image.asset('images/withsearch.png',
              scale:3.2,),
              ),
          ],
       )   );
  }

    Widget lisitofevent()
  {
    return Container(
      height: MediaQuery.of(context).size.height,
      child:ListView.builder(
      itemCount:14,
      padding: EdgeInsets.only(top:1),
      itemBuilder: (BuildContext context, index)=>joinevent(
        index==0?'Free':index==1?'Paid':'Free',
        


      )
      )   );
  }
  Widget joinevent(String txt){
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 16,right: 16,top:6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20
        )
      ),
      child: Container(
child: Column(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top:5),
      child:Row(
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
              scale:4),
              SizedBox(width:3,),
              Text('Public',
              style: TextStyle(
                color: Colors.black,
              fontSize:9
              ),),
              Icon(Icons.arrow_drop_down,
              color: Colors.grey,)
              ],),
              
             
               ],
 
  )
  ),
  Container(
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('20-5-2019',
            style:TextStyle(color: Colors.grey,
            fontWeight:FontWeight.bold,
            fontSize:7,
            )
              ),

              Container(
                margin: EdgeInsets.only(top: 2),
                child: Stack(
                  children: <Widget>[
    Image.asset('images/Rectanglecontainer.png',
              scale:4),
              Container(
margin: EdgeInsets.only(left:5),
                child:Text('$txt',
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
Container(
  margin: EdgeInsets.only(left:4,right:4,),
  child:Stack(
    children: <Widget>[
Image.asset('images/simplewithoutbutton.png',
width: 360,),
Row(
  mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[
  InkWell(
      onTap:(){
    AppRoutes.push(context,Eventclick());
      },
      child:
Container(
  margin: EdgeInsets.only(right:0,top:66),
height:MediaQuery.of(context).size.height/21,
width: MediaQuery.of(context).size.width/5,
decoration: BoxDecoration(
  gradient: LinearGradient(colors: [
    Color(0xffD04593),Color(0xffE14841)
  ])
  
),
child: Center(
  child:Text('Join Event',
  style:TextStyle(color:Colors.white,
  fontSize:10,
  fontWeight:FontWeight.bold))
),
)
  )],
)


    ],
  )
),
   
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
    );
  }
}