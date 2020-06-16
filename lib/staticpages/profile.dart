import 'package:flutter/cupertino.dart';
import 'drawer.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  ProfileState createState() {
    // TODO: implement createState
    return new ProfileState();
  }
}

class ProfileState extends State<Profile> {
  TextEditingController name = TextEditingController()
    ..text = '    UĞUR';
  TextEditingController surname = TextEditingController()
    ..text = '    ARAS';
  TextEditingController eposta = TextEditingController()
    ..text = '    uguraras24@gmail.com';
  TextEditingController telephone = TextEditingController()
    ..text = '    5344548186';

  int secilenMenuItem = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF54D3C2), //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "PARKCAPP",
          style: TextStyle(
            color: Color(0xFF54D3C2),
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
      elemanlaralt(),
      //maps(),
    ];
  }

  Column elemanlaralt() {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF54D3C2),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    width: 80,
                    height: 60,
                    child: Center(
                      child: Text("40", style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF54D3C2)),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text("Rezervasyon Puanı", style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF54D3C2)),),
                  ),

                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        values(name),
        values(surname),
        values(eposta),
        values(telephone),
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
                shadowColor: Colors.redAccent,
                color: Color(0xFF54D3C2),
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Güncelle',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),


      ],
    );
  }

  Container values(deger) {
    return Container(
      height: 60,
      child: TextField(
        controller: deger,
        enabled: false,
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFF54D3C2),
          fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF54D3C2)),
          ),
        ),
      ),
    );
  }

}
