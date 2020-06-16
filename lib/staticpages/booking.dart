import 'drawer.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  @override
  BookingState createState() {
    // TODO: implement createState
    return new BookingState();
  }
}

class BookingState extends State<Booking> {
  int secilenMenuItem = 2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: DrawerMenu(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(
              color:Color(0xFF54D3C2) , //change your color here
            ),
            backgroundColor: Colors.white,
            expandedHeight: 50,
            floating: true,
            pinned: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "REZERVASYONLARIM",
                style: TextStyle(
                  color:Color(0xFF54D3C2) ,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
              centerTitle: true,
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              _elemanlar,
              childCount: 3,
            ),
            itemExtent:290,
          ),
        ],
      ),
    );
  }
}


Widget _elemanlar(BuildContext context, int index) {
  return Container(
    color: Colors.white,
    height: 144,
    child: Card(
      borderOnForeground: false,
      margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0.0),
      elevation: 6,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30, top: 15, right: 0, bottom: 0.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.rate_review),
                  Text(
                    " | OTOPARK          ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "AKINCILAR 2 OTOPARK",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color:Color(0xFF54D3C2) ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10, right: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin:
                    EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "Rezeryasyon Girişi",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(left: 100, top: 0, right: 0, bottom: 0),
                    child: Text("Rezervsayon Çıkışı"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10, right: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin:
                    EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "15 Şubat 2020  23:00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(left: 58, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "16 Şubat 2020  14:30",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10, right: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin:
                    EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "Adres",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10, right: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin:
                    EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "Taşkent Caddesi 28/3 Çankaya/Ankara",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10, right: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin:
                    EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "Saatlik Ücret",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                    ),
                    height: 25,
                    width: 69,
                    margin:EdgeInsets.only(left: 182, top: 0, right: 0, bottom: 0),
                    child: Center(
                      child: Text("6,5 tl",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10, right: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin:
                    EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "Toplam Tutar",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                    ),
                    height: 25,
                    width: 69,
                    margin:EdgeInsets.only(left: 177, top: 0, right: 0, bottom: 0),
                    child: Center(
                      child: Text("125 tl",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
              child:  Container(
                height: 38.0,
                child: Material(
                  shadowColor:Color(0xFF54D3C2) ,
                  color:Color(0xFF54D3C2) ,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'DETAYLAR İÇİN TIKLA',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),


  );
}
