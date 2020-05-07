import 'package:flutter/material.dart';

import '../approuteclass.dart';
class Blockuserpopup extends StatefulWidget {
  @override
  _BlockuserpopupState createState() => _BlockuserpopupState();
}

class _BlockuserpopupState extends State<Blockuserpopup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(32),
                           bottomRight: Radius.circular(32)
                         ),
  color: Color(0xff414141),
                       ),
              
                height: MediaQuery.of(context).size.height/5,
                child:
                 Column(children: <Widget>[
                  Container(
  margin: EdgeInsets.only(top: 35,left: 20),
  child:Column(
   children: <Widget>[
   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      InkWell(
          onTap: (){
            
     AppRoutes.pop(context);
    
          },
          child: Image.asset('images/specialback.png',
          scale: 4,),
          
      ),
Text(
  'BLOCK USER',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize:18
  ),
),
Container(
child:          PopupMenuButton(
             shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
             ),
             captureInheritedThemes: true,
              color:Colors.white,
              itemBuilder: (context){
                     var list = List<PopupMenuEntry<Object>>();
                                  list.add(
                                            PopupMenuItem(
                                              height:  25,
                                              child: GestureDetector(
                                                child: Text(
                                                  "Un Block User",
                                                  style: TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.bold),
                                                ),
                                                onTap: () {
                                                 // AppRoutes.push(context,Groupchat());
                                                },
                                              ),
                                              value: 1,
                                            ),
                                          );
                                           return list;
                },
                 icon:Icon(Icons.more_vert,size:20,color: Colors.pink,),
          ) 
),

    ],
  ),
           
          Container(
               margin: EdgeInsets.only(left: 10,top:2,bottom:0),
                width: MediaQuery.of(context).size.width/1.5,
                height: MediaQuery.of(context).size.height*.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(08)),
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
                  padding: EdgeInsets.only(top: 2,left: 20,right: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'SEARCH',
                        hintStyle: TextStyle(
                            color: Color(0xff29346E),
                            fontSize: 16
                        ),
                      suffixIcon: Image.asset('images/search.png',scale: 5,)
                    ),
                  ),
                )
          )
    ],
  ) 
),
 ],
                ),
              ),
               Container(
          margin: EdgeInsets.only(bottom: 0,top: 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                  itemCount:40,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return blockuser(
                       index==0?'images/messageman3.png.png':index==1?'images/b8.png':
                        index==2?'images/b1.png':index==3?'images/b4.png'
                       :'images/b6.png',
              
                     index==0?'Designer':index==1?'Designer':index==2?'Program':
                     index==3?' Designer':index==4?'Craft':'Fashion',
                     index
                  );
                  })
            ),
          ],
        ),
      ),
      
    );
  }

  Widget blockuser (String img,String txt, index)
  {
    return Card(
      
      elevation: 7,
      child:
    Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),   
      ),
      child: Column(
        children: <Widget>[
       CircleAvatar(
            radius: 30,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            child: Image.asset('$img',),
          ),
          
          Text('JOHN DOE',style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
          Container(
            margin: EdgeInsets.only(left: 03),
            width: MediaQuery.of(context).size.width/2,
            child: 
          
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 20),
      child:Text('$txt',style: TextStyle(
            color: Color(0xff29346E),
            fontSize:13,
            )),),
     

],))
        
     

        ],
      ),
    ));
  }
}