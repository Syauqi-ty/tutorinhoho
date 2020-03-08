import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutorinhoho/register_page.dart';
import 'package:tutorinhoho/auth.dart';
import 'package:tutorinhoho/profile.dart';

class List1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.chalkboardTeacher, color: Colors.indigo,),
                    Padding(padding: const EdgeInsets.all(8.0)),
                    Text(
                      'Cari Guru',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ]),
        ),
      ),
    );
  }
}

class List2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        onTap: () {
           Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProfileScreen();
                          }));
        },
        child: Container(
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.settings, color:Colors.indigo,),
                    Padding(padding: const EdgeInsets.all(8.0)),
                    Text(
                      'Setting',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ]),
        ),
      ),
    );
  }
}

class List3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        onTap: () {signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return RegisterPage();
                  }), ModalRoute.withName('/'));},
        child: Container(
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.signOutAlt,color: Colors.indigo,),
                    Padding(padding: const EdgeInsets.all(8.0)),
                    Text(
                      'Sign Out',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ]),
        ),
      ),
    );
  }
}

class List4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.gripHorizontal,color: Colors.indigo,),
                    Padding(padding: const EdgeInsets.all(8.0)),
                    Text(
                      'Pesanan',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ]),
        ),
      ),
    );
  }
}

