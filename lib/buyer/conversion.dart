import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:network/Drawer.dart';

import 'bar_drawer.dart';


class Conversion extends StatefulWidget {
  @override
  _ConversionState createState() => _ConversionState();
}

class _ConversionState extends State<Conversion> {
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           key: _scaffoldKey,
    appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(60), // here the desired height
        child:AppBarClass(context, true, _scaffoldKey, 'CONVERSATIONS'),
        ),
       drawer: HomeDrawer(),
      body:Stack(
        children: <Widget>[
     Container(
        child: ListView.builder(
          itemCount:9,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index)=>
          slideableaction(
             index==0?'images/im1.png':index==1?'images/im2.png':index==2?'images/im3.png':index==3?'images/im4.png':index==4?'images/im5.png':'images/im6.png',
            index==0?'jane jallow':index==1?'jane jallow':'jane jallow',
            index==0?'9:23':index==1?'10:24':index==2?'9:23':index==3?'11:24':'10:24',
          index==0?1:index==1?2:index=3,
            index==0?'You are one of peters compressions plays,huh?':index==1?'Both of them':'You are one of peters compressions plays,huh? have of babies',
            index
          )
      
        ),
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
                    onTap: (){
                    //  AppRoutes.push(context, Instantmessage());
                    },
                    child:Container(
                    margin: EdgeInsets.only(bottom: 07),
                    child:  Image.asset('images/plusstack.png',
          scale:3.5,) 
                  )
                  )
 ],
 )      
 ],
 )
       ],
      )
        ],
    )
    );
  }
  Widget slideableaction(String img,String name,String time,int msgnumber,String msg,int index){
    return Slidable(
  actionPane: SlidableDrawerActionPane(),
  actionExtentRatio: 0.25,
  child: Container(
      margin: EdgeInsets.only(top: 5),
   height: MediaQuery.of(context).size.height/7,
 decoration: BoxDecoration(
      gradient: LinearGradient(
            colors: [Color(index.isEven?0xffDC9C5D:0xffD04593),
             Color(index.isEven?0xffD04593:0xffC64D47)],
 ),),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 7),
           child: Image.asset('$img',
            scale: 3.4,),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
children: <Widget>[
     Container(
         child:   Text('$name',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    )
       ),
            
  Container(
         margin: EdgeInsets.only(left: 140,),
         child:   Text('$time',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      
    ),
    )
       ),
       Container(
child: InkWell(
  onTap: (){},
  child: Icon(Icons.keyboard_arrow_right,
  color: Colors.white,)
),
       ),
       
                  ],
                ),
             ),
             Container(
               
margin: EdgeInsets.only(right: 0,top: 7),
               child: Row( 
                 children: <Widget>[
                   Container(
                     margin: EdgeInsets.only(left:6),
                     child:CircleAvatar(
                     radius: 9,
                     child: Text('$msgnumber',),
                     backgroundColor: Colors.blue,
                     foregroundColor: Colors.white,
                    ) ),
                   Container(
padding: EdgeInsets.only(left: 0),
                     width: MediaQuery.of(context).size.width/1.4,
margin: EdgeInsets.only(left: 10),
                     child: Text('$msg',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 13
                     ),),
                   )
            
                 ],
               )
              
             )
 ],
),
          )
 ],
      ),
      
    ),
  actions: <Widget>[

  ],
  
  secondaryActions: <Widget>[
    
    IconSlideAction(
       color:Color(0xffFF9500),
      
      caption: 'Block User',
      foregroundColor: Colors.white,
       iconWidget: Image.asset('images/blockuser.png',
       scale: 3,),
      onTap: () => _showSnackBar('Block User',),
    ),
    IconSlideAction(
      caption: 'Delete chat', 
      foregroundColor: Colors.white,     
       color:Color(0xffFF9500),
       iconWidget: Image.asset('images/deletechat.png',
       scale: 3,),
     
      onTap: () => _showSnackBar('Delete'),
    ),
  ],
);
  }
  Widget _showSnackBar(String txt,){
    return Column(
      children: <Widget>[
Text('$txt',
style: TextStyle(
  color: Colors.white
),),

      ],
    );
  }

}