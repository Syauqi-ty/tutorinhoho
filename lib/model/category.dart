import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/math.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Matematika",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/phy.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Fisika",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/kim.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),

                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Kimia",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Card4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/bio.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Biologi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Card5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/economic.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Ekonomi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Card6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/socio.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Sociologi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Card7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/history.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Sejarah",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Card8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210,
                    width: 200,
                    child: Image.asset(
                      "assets/image/geo.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: 200,
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0)
                        ])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 3.0,
                  child: Row(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Geologi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 0.5),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              'tuqa',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
