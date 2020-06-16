import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';
import 'package:flutter/material.dart';

class Total extends StatefulWidget {
  @override
  TotalState createState() {
    // TODO: implement createState
    return new TotalState();
  }
}

class TotalState extends State<Total> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Color(0xFF54D3C2)
        ),
        centerTitle: true,
        title: Text("PARKCAPP",style: TextStyle(color:Color(0xFF54D3C2)),),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                //
              }),


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: AssetImage("assets/visamaster.png",),
                  )

              ),
              width: MediaQuery.of(context).size.width,
            ),
          SizedBox(height: 40,),
          Container(
            height: 110,
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Text(
                    "İŞLEM YAPILACAK KARTINIZ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color:  Color(0xFF54D3C2),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        child: Icon(
                          Icons.credit_card,
                          color:  Color(0xFF54D3C2),
                          size: 40,
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Column(
                          children: [
                            Container(
                              height:35,
                              margin: EdgeInsets.only(right: 55),
                              child: Text(
                                "UĞUR ARAS",
                                style: TextStyle(
                                    color:  Color(0xFF54D3C2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              height:35,
                              margin: EdgeInsets.only(left: 50),

                              child: Text(
                                '**** **** **** ' + "1819" + '                  ',
                                style: TextStyle(
                                    color: Color(0xFF54D3C2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Icon(
                          Icons.replay,
                          color:  Color(0xFF54D3C2),
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
            SizedBox(height: 40,),
            Container(
              height: 100,
              child: Column(
                children: [
                  Container(
                    margin:EdgeInsets.only(top: 10),
                    child: Text(
                      "TOPLAM TUTAR   :       55 TL",
                      style: TextStyle(
                          color:  Color(0xFF54D3C2),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                    height: 40,
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 10),
                    child: Text(
                      "HİZMET BEDELİ   :        33 TL",
                      style: TextStyle(
                          color:  Color(0xFF54D3C2),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                    height: 40,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10,bottom: 20),
              child:  Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF54D3C2)
                  ),
                  child:Container(
                    margin: EdgeInsets.only(left: 95,top: 7),
                    child:Text(
                      "ÖDEME YAP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),

                  width: 300,
                  height: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

