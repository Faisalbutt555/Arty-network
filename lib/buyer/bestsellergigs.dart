import 'package:flutter/material.dart';

import '../Drawer.dart';
import 'bar_drawer.dart';
class Bestsellergigs extends StatefulWidget {
  @override
  _BestsellergigsState createState() => _BestsellergigsState();
}

class _BestsellergigsState extends State<Bestsellergigs> {
  @override
  Widget build(BuildContext context) {
     final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Scaffold(
       key: _scaffoldKey,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(padding:EdgeInsets.only(top:20), 
        child:
        AppBarClass(context, false, _scaffoldKey, 'BEST SELLERS GIGS '),
      )),
      drawer: HomeDrawer(),
      body:  ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context,int index){
      return _listOfGig();
    },itemCount: 10,),
      
    );
  }
  Widget _listOfGig() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index){
      return savegig(context, index);
    },itemCount: 10,),
    );
  }
  
  Widget savegig (BuildContext context,int index) {
    return Column(
      children: <Widget>[
        Flexible(child:Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
          width: MediaQuery.of(context).size.width*.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(17)),
          color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                    color: Colors.grey
                )
              ]
          ),

         child:InkWell(
           onTap: (){
         //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Singleevent()));
           },
           child: 
         
         Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('images/qc2dLw.png'),
              Flexible(child:Column(
                mainAxisSize: MainAxisSize.min,
                 children: <Widget>[
                   Row(
                     children: <Widget>[

                       Image.asset('images/circular_image.png',scale: 5,),

                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           Text('John Doe',style: TextStyle(
                             fontSize: 10,
                             fontWeight: FontWeight.bold
                           ),),
                           Text('Top Seller',style: TextStyle(
                               fontSize: 6,
                             color: Colors.grey
                           ),)

                         ],
                       )

                     ],
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 10,right: 10),
                     child: Text('ahsbas sjcna kca csancajsj cka ckjanchaiusc akjciahcahsc  sascjs v siudhc hksjd s dvs dkdv sajc akaasjca cahs ckjah shcka sjck ascj ac kascnajsc ajksnc kajckja',
                       maxLines: 3,
                       textAlign: TextAlign.start,
                       style: TextStyle(
                         fontSize: 10,
                       ),),
                   ) ,
                  Padding(
                    padding: EdgeInsets.only(left: 10,right: 100),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.star,color: Colors.yellow,size: 18,),
                        Text('4.9',style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 8,
                        ),),

                        Text('(100)',style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[

                            Icon(Icons.menu,color: Color(0xffFF0067),size: 18,),
                            Icon(Icons.favorite,color: Color(0xffFF0067),size: 18,),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: <Widget>[
                            Text('\$100',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),)
                          ],
                        ),
                      )

                    ],
                  )
                 ],
              ),fit: FlexFit.loose,),
              SizedBox(height: 10,)

            ],

          )  ),),fit: FlexFit.loose,),
      ],
    );
  }
}