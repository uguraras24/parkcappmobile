
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:parkcappmobile/staticpages/booking.dart';
import 'package:parkcappmobile/staticpages/contact.dart';
import 'package:parkcappmobile/staticpages/help.dart';
import 'package:parkcappmobile/staticpages/payment.dart';
import 'package:parkcappmobile/staticpages/profile.dart';
import 'package:parkcappmobile/staticpages/total.dart';
import 'process.dart';
import 'package:parkcappmobile/staticpages/onboarding.dart';
import '../homepage.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "uguraras24",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),
            ),
            accountEmail: Text(
              "uguraras24@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            currentAccountPicture: Container(
              child: Image.asset(
                'assets/ba.jpg',
                fit: BoxFit.cover,
              ),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "UA",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                elemanlar("HESABIM", Icons.account_circle, Profile()),
                elemanlar("REZERVASYONLAR", Icons.format_list_bulleted, Booking()),
                elemanlar("YARDIM", Icons.help, Help()),
                elemanlar("İLETİŞİM", Icons.contact_mail, Contact()),
                elemanlar("PARKCAPP", Icons.library_books, Total()),
                elemanlar("NASIL KULLANILIR", Icons.help_outline, OnBoardingScreen()),
                elemanlar("ÇIKIŞ", Icons.help_outline, HomePage()),

              ],
            ),
          )
        ],
      ),
    );
  }

  InkWell elemanlar(value, icon, page, {color, function()}) {
    return InkWell(
      onTap: () {
        if (value == "Çıkış Yap") {
          function();
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        }
      },
      splashColor: Colors.red,
      child: ListTile(
        leading: Icon(
          icon,
            color:Color(0xFF54D3C2)        ),
        title: Text(
          value,
          style: TextStyle(
            fontSize: 18,
              color:Color(0xFF54D3C2),
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

}
