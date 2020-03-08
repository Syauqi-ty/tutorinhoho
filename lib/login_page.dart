import 'package:flutter/material.dart';
import 'package:tutorinhoho/home_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Stack(
          children: <Widget>[
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    color: Colors.lightBlue, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: -getBigDiameter(context) / 4,
              top: -getBigDiameter(context) / 4,
              child: Container(
                child: Center(
                  child: Text(
                    "Tutorin aja",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    color: Colors.blueAccent, shape: BoxShape.circle),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.email, color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              labelText: "Username",
                              labelStyle: TextStyle(color: Colors.grey)),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(Icons.vpn_key, color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ))),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: RaisedButton(
                            child: Container(
                                child: Text(
                              "SIGN IN",
                              style: TextStyle(color: Colors.white),
                            )),
                            color: Colors.lightBlue,
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "DONT HAVE ACCOUNT?",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
