import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';
import 'package:flutter/material.dart';

class Process extends StatefulWidget {
  @override
  ProcessState createState() {
    // TODO: implement createState
    return new ProcessState();
  }
}

class ProcessState extends State<Process> {
  int secilenMenuItem = 2;
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
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage("assets/hotel_1.png",),
                fit: BoxFit.cover
              )

              ),
              width: MediaQuery.of(context).size.width,

            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(top: 10),
              child: Text("RÜZGARLAR OTOPARK",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xFF54D3C2)),),
            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(top: 10),
              child: Text("Taşkent Caddesi 28/5 Çankaya Ankara",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xFF54D3C2)),),

            ),
            Container(
              height: 120,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 130),
                    height: 40,
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Color(0xFF54D3C2),),
                        Icon(Icons.star,color: Color(0xFF54D3C2),),
                        Icon(Icons.star,color: Color(0xFF54D3C2),),
                        Icon(Icons.star,color: Color(0xFF54D3C2),),
                        Icon(Icons.star,color: Color(0xFF54D3C2),)
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Row(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child:Icon(Icons.check_circle,color: Color(0xFF54D3C2)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child:Text("Otobüs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFF54D3C2)),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child:Icon(Icons.check_circle,color: Color(0xFF54D3C2)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child:Text("Küçük Araç",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFF54D3C2)),),
                            )
                          ],
                        ),
                      ),
                    ],),
                  ),
                  Container(
                    height: 40,
                    child: Row(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child:Icon(Icons.check_circle,color: Color(0xFF54D3C2)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child:Text("Kamyonet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFF54D3C2)),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child:Icon(Icons.check_circle,color: Color(0xFF54D3C2)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child:Text("Motorsiklet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFF54D3C2)),),
                            )
                          ],
                        ),
                      ),
                    ],),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 165),
              height: 40,
              child:Row(
                children: [
                  Text("Araç Seç",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child:Icon(Icons.arrow_drop_down,size: 30,),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              child: Icon(Icons.access_time,size: 30,color: Color(0xFF54D3C2),),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color:Color(0xFF54D3C2))
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:Color(0xFF54D3C2))
                    ),
                    width: MediaQuery.of(context).size.width/3.05,
                    child: Container(
                      margin: EdgeInsets.only(left: 50,top: 8),
                      child:Text("22",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xFF54D3C2) ),),
                    ),
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:Color(0xFF54D3C2))
                    ),
                    width: MediaQuery.of(context).size.width/3,
                    child: Container(
                      margin: EdgeInsets.only(left: 50,top: 8),
                      child:Text("08",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xFF54D3C2) ),),
                    ),
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:Color(0xFF54D3C2))
                    ),
                    width: MediaQuery.of(context).size.width/3,
                    child: Container(
                      margin: EdgeInsets.only(left: 50,top: 8),
                      child:Text("2020",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xFF54D3C2) ),),
                    ),height: 40,
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color:Color(0xFF54D3C2))
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:Color(0xFF54D3C2))
                    ),
                    width: MediaQuery.of(context).size.width/2.02,
                    child: Container(
                      margin: EdgeInsets.only(left: 80,top: 8),
                      child:Text("--16",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xFF54D3C2) ),),
                    ),
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color:Color(0xFF54D3C2) ),
                    ),
                    width: MediaQuery.of(context).size.width/2,
                    child: Container(
                      margin: EdgeInsets.only(left: 80,top: 8),
                      child:Text("30--",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xFF54D3C2) ),),
                    ),
                    height: 40,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color:Color(0xFF54D3C2))
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 130,top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.panorama_fish_eye,size: 24,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text("0 - 1 Saat ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 130,top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.panorama_fish_eye,size: 24,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text("0 - 1 Saat ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 130,top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.panorama_fish_eye,size: 24,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text("0 - 1 Saat ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        )
                      ],
                    ),
                  ),
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
                          margin: EdgeInsets.only(left: 100,top: 7),
                          child:Text(
                            "ONAYLA",
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
            )
          ],
        ),
      ),
    );
  }
}

