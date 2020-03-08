import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorinhoho/detail.dart';
import 'package:tutorinhoho/profile.dart';
import 'package:tutorinhoho/auth.dart';
import 'package:tutorinhoho/list.dart';
import 'detail2.dart';
import 'course_notifier.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String haha() {
  return name.substring(0, name.indexOf(" "));
}

class _HomePageState extends State<HomePage> {
  // List<Kategori> kategoriList = [];
  // List<Kategori2> kategori2List = [];
  @override
  void initState() {
    Pass pass = Provider.of<Pass>(context, listen: false);
    getCourse(pass);
    super.initState();

    // DatabaseReference kategoriRef =
    //     FirebaseDatabase.instance.reference().child("Kategoriipa");
    // DatabaseReference kategori2Ref =
    //     FirebaseDatabase.instance.reference().child("Kategoriips");

    // kategoriRef.once().then((DataSnapshot snap) {
    //   var KEYS = snap.value.keys;
    //   var DATA = snap.value;

    //   // kategoriList.clear();

    //   for (var name in KEYS) {
    //     Kategori kategoriipa =
    //         new Kategori(DATA[name]['judul'], DATA[name]['image']);

    //     kategoriList.add(kategoriipa);
    //    }
    //   // setState(() {
    //   //   // print('Length: $kategoriList.length');
    //   // });
    // });
    // kategori2Ref.once().then((DataSnapshot snap) {
    //   var KEYS = snap.value.keys;
    //   var DATA = snap.value;

    //   kategori2List.clear();

    //   for (var name in KEYS) {
    //     Kategori2 kategoriips =
    //         new Kategori2(DATA[name]['judul'], DATA[name]['image']);

    //     kategori2List.add(kategoriips);
    //   }
    //   setState(() {
    //     print('Length: $kategori2List.length');
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    Pass pass = Provider.of<Pass>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(canvasColor: Colors.transparent),
      home: Scaffold(
        appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue[400], Colors.blue[400]],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.transparent,
                  offset: Offset(0, 0.0),
                  blurRadius: 0.0,
                ),
              ],
            ),
            child: AppBar(
              backgroundColor: Colors.blue[400],
              elevation: 0.0,
              title: Text("Halo " + haha(),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Worksans')),
              actions: <Widget>[
                Material(
                  color: Colors.blue[400],
                  child: Center(
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(10),
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ProfileScreen();
                          }));
                        },
                        child: Ink(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(imageUrl),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(
              // Set the transparency here
              canvasColor: Colors.white,
            ),
            child: Drawer(
              child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(name),
                  accountEmail: Text(email),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[400], Colors.blue[100]],
                    ),
                  ),
                ),
                List1(),
                List4(),
                List2(),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/image/belajar.png'))
                      ],
                    ),
                  ),
                ),
                List3(),
              ]),
              // All other codes goes here.
            )),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue[400], Colors.blue[100]],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Mau Belajar Apa\n      Hari Ini?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontSize: 20))
                        ]),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  color: Colors.indigo[300],
                                  height: 25,
                                  width: 90,
                                  child: Text('Saintek',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontFamily: 'WorkSans',
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ))),
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 210,
                      child: pass.kategoriList.length == 0
                          ? new Text("Getting data...")
                          : new ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: pass.kategoriList.length,
                              itemBuilder: (context, index) {
                                return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print('object');
                    pass.kategoriOy = pass.kategoriList[index];
                    Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail();
                          }));
                   
                  },
                  child: Container(
                      height: 210,
                      width: 200,
                      child: Image.network(
                        pass.kategoriList[index].image,
                        fit: BoxFit.cover,
                        
                      )),
                ),
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
                            Text(pass.kategoriList[index].judul,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                    ],
                  ),
                )
              ],
            )));
                              })),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  color: Colors.indigo[300],
                                  height: 25,
                                  width: 90,
                                  child: Text('Soshum',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontFamily: 'WorkSans',
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ))),
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 210,
                      child: pass.kategori2List.length == 0
                          ? new Text("Getting data....")
                          : new ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: pass.kategori2List.length,
                              itemBuilder: (context, index) {
                                return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    pass.kategori2 = pass.kategori2List[index];
                    Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail2();
                          }));
                  },
                  child: Container(
                      height: 210,
                      width: 200,
                      child: Image.network(
                        pass.kategori2List[index].image,
                        fit: BoxFit.cover,
                      )),
                ),
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
                            Text(pass.kategori2List[index].judul,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'WorkSans',
                                )),
                          ]),
                    ],
                  ),
                )
              ],
            )));
                              })),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lihat Statistik\n  Kamu Yuk!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'WorkSans',
                                  fontSize: 20)),
                        
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget Uhuy(String image, String judul) {
  //   return new Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //       child: ClipRRect(
  //           borderRadius: BorderRadius.all(Radius.circular(15.0)),
  //           child: Stack(
  //             children: <Widget>[
  //               GestureDetector(
  //                 onTap: () {
  //                   Navigator.push(context,
  //                             MaterialPageRoute(builder: (context) {
  //                           return HomePage();
  //                         }));
  //                 },
  //                 child: Container(
  //                     height: 210,
  //                     width: 200,
  //                     child: Image.network(
  //                       image,
  //                       fit: BoxFit.cover,
  //                     )),
  //               ),
  //               Positioned(
  //                 bottom: 0,
  //                 left: 0,
  //                 width: 200,
  //                 height: 50,
  //                 child: Container(
  //                   decoration: BoxDecoration(
  //                       gradient: LinearGradient(
  //                           begin: Alignment.bottomCenter,
  //                           end: Alignment.topCenter,
  //                           colors: [
  //                         Colors.black.withOpacity(0.1),
  //                         Colors.black.withOpacity(0.0)
  //                       ])),
  //                 ),
  //               ),
  //               Positioned(
  //                 left: 10.0,
  //                 bottom: 3.0,
  //                 child: Row(
  //                   children: <Widget>[
  //                     Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: <Widget>[
  //                           Text(judul,
  //                               textAlign: TextAlign.left,
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                                 color: Colors.black,
  //                                 fontSize: 14,
  //                                 fontFamily: 'WorkSans',
  //                               )),
  //                         ]),
  //                   ],
  //                 ),
  //               )
  //             ],
  //           )));
  // }

  // Widget Uhuy2(String image, String judul) {
  //   return new Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //       child: ClipRRect(
  //           borderRadius: BorderRadius.all(Radius.circular(15.0)),
  //           child: Stack(
  //             children: <Widget>[
  //               GestureDetector(
  //                 onTap: () {
  //                   print("anjing kece");
  //                 },
  //                 child: Container(
  //                     height: 210,
  //                     width: 200,
  //                     child: Image.network(
  //                       image,
  //                       fit: BoxFit.cover,
  //                     )),
  //               ),
  //               Positioned(
  //                 bottom: 0,
  //                 left: 0,
  //                 width: 200,
  //                 height: 50,
  //                 child: Container(
  //                   decoration: BoxDecoration(
  //                       gradient: LinearGradient(
  //                           begin: Alignment.bottomCenter,
  //                           end: Alignment.topCenter,
  //                           colors: [
  //                         Colors.black.withOpacity(0.1),
  //                         Colors.black.withOpacity(0.0)
  //                       ])),
  //                 ),
  //               ),
  //               Positioned(
  //                 left: 10.0,
  //                 bottom: 3.0,
  //                 child: Row(
  //                   children: <Widget>[
  //                     Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: <Widget>[
  //                           Text(judul,
  //                               textAlign: TextAlign.left,
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                                 color: Colors.black,
  //                                 fontSize: 14,
  //                                 fontFamily: 'WorkSans',
  //                               )),
  //                         ]),
  //                   ],
  //                 ),
  //               )
  //             ],
  //           )));
  // }
 }

