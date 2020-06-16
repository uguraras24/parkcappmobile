import 'package:flutter/cupertino.dart';
import 'drawer.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  PaymentState createState() {
    // TODO: implement createState
    return new PaymentState();
  }
}

class PaymentState extends State<Payment> {
  int secilenMenuItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color:  Color(0xFF54D3C2), //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "PARKCAPP",
          style: TextStyle(
            color:  Color(0xFF54D3C2),
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              elemanlar(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> elemanlar() {
    return [
      paymentbody(context),
      //maps(),
    ];
  }

  Column paymentbody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        for(int i=0;i<4;i++) cardinfo(context, 'ERKUT KORKMAZ', '1907'),
        Container(
          height: 140,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 45,
              width: 300,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor:  Color(0xFF54D3C2),
                color:  Color(0xFF54D3C2),
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Kart Ekle',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),//butonalanı
      ],
    );
  }

  Container cardinfo(BuildContext context, name, cardnumber) {
    double width = MediaQuery.of(context).size.width;
    print("denem$width");
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF54D3C2),
          style: BorderStyle.solid,
          width: 0.8,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.credit_card,
              color:  Color(0xFF54D3C2),
              size: 40,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width / 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    name,
                    style: TextStyle(
                        color:  Color(0xFF54D3C2),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    '**** **** **** ' + cardnumber + '                  ',
                    style: TextStyle(
                        color: Color(0xFF54D3C2),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width / 13.66),
            child: Icon(
              Icons.delete_sweep,
              color:  Color(0xFF54D3C2),
              size: 40,
            ),
          ),
        ],
      ),
    );
  }

}
