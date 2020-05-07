import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network/LoginScreen.dart';

class SignUp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _State_SignUp();
  }

}

class _State_SignUp extends State<SignUp>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

      child: Column(
        children: <Widget>[

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
                color: Color(0xff292929)
            ),
            child: Center(
              child: Image.asset("images/Untitled-2.png",scale: 5,),
            ),
          ),

          _emailPass(context),

          _signInWith(context),

          _RegisterButton(context),

         _haveAccount(context)


        ],
      ),
    ),
      ),
    );
  }

  Widget _emailPass(BuildContext context)
  {
    return Container(
      child: Column(
        children: <Widget>[
          //Ambassador User Name
          Container(
              margin: EdgeInsets.only(top: 30,left: 30,right: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        color: Colors.grey
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ambassador User Name',
                      hintStyle: TextStyle(
                          color: Color(0xff29346E)
                      ),
                      prefixIcon: Icon(Icons.person,color: Colors.yellow)
                  ),
                ),
              )
          ),


          //Email
          Container(
              margin: EdgeInsets.only(top: 10,left: 30,right: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        color: Colors.grey
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Color(0xff29346E),
                      ),
                      prefixIcon: Icon(Icons.email,color: Colors.grey)
                  ),
                ),
              )
          ),


          //Phone Number
          Container(
              margin: EdgeInsets.only(top: 10,left: 30,right: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        color: Colors.grey
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        color: Color(0xff29346E),
                      ),
                      prefixIcon: Icon(Icons.phone,color: Colors.grey)
                  ),
                ),
              )
          ),


          //Password
          Container(
              margin: EdgeInsets.only(top: 10,left: 30,right: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        color: Colors.grey
                    )
                  ]
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xff29346E),
                      ),
                      prefixIcon: Icon(Icons.vpn_key,color: Colors.grey)
                  ),
                ),
              )
          ),


        ],
      ),
    );
  }


  Widget _signInWith (BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Sign up with',style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff29346E),
                    fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),

          Container(
            width: MediaQuery.of(context).size.width*.7,
            height: MediaQuery.of(context).size.height*.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

             Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:InkWell(
                    onTap: (){
                      
                    //  facebookalert();
                    },
                    child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff4267B2),
                      foregroundColor: Colors.white,
                      child:Text('f',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),) ), 
                  )
                  
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff03A9F4),
                      foregroundColor: Colors.white,
                      child:Image.asset('images/tweet.png',
                      scale: 3.5,)
                      ), 
              
                ),
                    Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffF44336),
                      foregroundColor: Colors.white,
                      child:Image.asset('images/goog.png',
                      scale: 4,)
                      ), 
              
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff0077B5),
                      foregroundColor: Colors.white,
                      child:Text('in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),)
                      ), 
              
                ),
              ],
            ),
          )

        ],
      ),
    );
  }

  Widget _RegisterButton(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 30,right: 30),
      width: MediaQuery.of(context).size.width*.8,
      height: MediaQuery.of(context).size.height*.055,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xffCC3B97),
                Color(0xffFBB85D),
              ]
          )
      ),
      child: Center(
        child: Text('REGISTER',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16
        ),),
      ),
    );
  }

  Widget _haveAccount(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(left: 50,right: 50,top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text('Already a member? ',style: TextStyle(
            color: Color(0xff29346E),
            fontSize: 16,
          ),),

          GestureDetector(
            child: Text('LOGIN',style: TextStyle(
                color: Color(0xffFF0067),
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          )

        ],
      ),
    );
  }


}