import 'package:flutter/material.dart';
import 'package:tutorinhoho/home_page.dart';
import 'package:tutorinhoho/auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/image/tuktuk2.png',height: 300,width: 300,),
              Text('Lets be smart and become Tutorin Aja member!',style: TextStyle(fontSize:12,color: Colors.grey),),
              SizedBox(height:10),
              _signInButton(),
            ],
          ),)
      ),
    );
  }
  Widget _signInButton(){
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: (){
        signInWithGoogle().whenComplete((){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
            return HomePage();
          }));
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color:Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize:MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Image(image:AssetImage('assets/image/google_logo.png'),height:35),
            Padding(padding: const EdgeInsets.only(left:10),
            child: Text('Sign In With Google',
            style: TextStyle(fontSize: 20,color: Colors.grey),)
            )
          ]
        ),
      ),
    );
  }
}
