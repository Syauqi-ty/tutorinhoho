import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorinhoho/home_page.dart';
import 'course_notifier.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

double harga = 80000;
int counter = 0;
double hasil = 0;

class _DetailState extends State<Detail> {
  var selectedCard = 'WEIGHT';
  var selectedType;

  increase() {
    setState(() {
      counter++;
      hasil = harga * counter;
      if (counter < 0) {
        hasil = 0;
        counter = 0;
      }
    });
  }

  decrease() {
    setState(() {
      counter--;
      hasil = harga * counter;
      if (counter < 0) {
        hasil = 0;
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 80000);
    FlutterMoneyFormatter fmf2 = FlutterMoneyFormatter(amount: hasil);
    print(fmf
        .copyWith(symbol: 'Rp ', symbolAndNumberSeparator: ' ')
        .output
        .symbolOnLeft);
    Pass pass = Provider.of<Pass>(context, listen: false);
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 190, 222, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            counter = 0;
            hasil = 0;
            Navigator.pop(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Pesanan',
            style: TextStyle(
                fontFamily: 'Worksans', fontSize: 18.0, color: Colors.white)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height - 80.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent),
              Positioned(
                  top: 75.0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45)),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100,
                    width: MediaQuery.of(context).size.width,
                  )),
              Positioned(
                  top: 30.0,
                  left: MediaQuery.of(context).size.width / 2 - 100,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        image: DecorationImage(
                            image: NetworkImage(pass.kategoriOy.image),
                            fit: BoxFit.cover)),
                    height: 200,
                    width: 200,
                  )),
              Positioned(
                top: 250,
                left: 25,
                right: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      pass.kategoriOy.judul,
                      style: TextStyle(
                          fontFamily: 'Worksans',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                              fmf
                                  .copyWith(
                                      symbol: 'Rp ',
                                      symbolAndNumberSeparator: ' ')
                                  .output
                                  .symbolOnLeft,
                              style: TextStyle(
                                  fontFamily: 'Worksans',
                                  fontSize: 20,
                                  color: Colors.grey)),
                          Container(height: 25, color: Colors.grey, width: 1.0),
                          Container(
                            width: 125,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Color.fromARGB(87, 49, 190, 222)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  InkWell(
                                      onTap: decrease,
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(87, 49, 190, 222),
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.remove,
                                          size: 20,
                                          color: Colors.white,
                                        )),
                                      )),
                                  Text('$counter',
                                      style: TextStyle(
                                        fontFamily: 'Worksans',
                                        fontWeight: FontWeight.bold,
                                      )),
                                  InkWell(
                                      onTap: increase,
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(87, 49, 190, 222),
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.white,
                                        )),
                                      )),
                                ]),
                          ),
                        ]),
                    SizedBox(height: 20),
                    Text(
                      'Kelas Berapa Kamu?',
                      style: TextStyle(fontSize: 14, fontFamily: 'Worksans'),
                    ),
                    SizedBox(height: 20),
                    Container(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            infoCard('SD', 'Kelas 1'),
                            SizedBox(width: 10),
                            infoCard('SD', 'Kelas 2'),
                            SizedBox(width: 10),
                            infoCard('SD', 'Kelas 3'),
                            SizedBox(width: 10),
                            infoCard('SD', 'Kelas 4'),
                            SizedBox(width: 10),
                            infoCard('SD', 'Kelas 5'),
                            SizedBox(width: 10),
                            infoCard('SD', 'Kelas 6'),
                            SizedBox(width: 10),
                            infoCard('SMP', 'Kelas 7'),
                            SizedBox(width: 10),
                            infoCard('SMP', 'Kelas 8'),
                            SizedBox(width: 10),
                            infoCard('SMP', 'Kelas 9'),
                            SizedBox(width: 10),
                            infoCard('SMA', 'Kelas 10'),
                            SizedBox(width: 10),
                            infoCard('SMA', 'Kelas 11'),
                            SizedBox(width: 10),
                            infoCard('SMA', 'Kelas 12'),
                            SizedBox(width: 10)
                          ],
                        )),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white),
                          height: 50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.map,
                                    color: Color.fromRGBO(49, 190, 222, 1)),
                                Text(
                                  'Lokasi kamu dimana?',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Worksans"),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Color.fromRGBO(49, 190, 222, 1))
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            color: Colors.black),
                        height: 70,
                        child: Center(
                            child: Text(
                          fmf2
                              .copyWith(
                                  symbol: 'Rp ', symbolAndNumberSeparator: ' ')
                              .output
                              .symbolOnLeft,
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Worksans"),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget infoCard(String title, String kelas) {
    return InkWell(
      onTap: () {
        selectCard(kelas);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kelas == selectedCard
              ? Color.fromRGBO(49, 190, 222, 1)
              : Colors.white,
          border: Border.all(
              color: kelas == selectedCard
                  ? Colors.transparent
                  : Color.fromRGBO(49, 190, 222, 1),
              style: BorderStyle.solid,
              width: 0.75),
        ),
        height: 100,
        width: 100,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Worksans',
                        color: kelas == selectedCard
                            ? Colors.white
                            : Color.fromRGBO(49, 190, 222, 1)),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        kelas,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Worksans',
                            color: kelas == selectedCard
                                ? Colors.white
                                : Color.fromRGBO(49, 190, 222, 1)),
                      )
                    ]),
              )
            ]),
      ),
    );
  }

  selectCard(kelas) {
    setState(() {
      selectedCard = kelas;
    });
  }
}
