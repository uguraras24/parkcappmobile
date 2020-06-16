import 'package:flutter/material.dart';
import 'drawer.dart';

class Help extends StatefulWidget {
  @override
  HelpPageState createState() {
    // TODO: implement createState
    return new HelpPageState();
  }
}

class HelpPageState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(
              color: Colors.red, //change your color here
            ),
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height / 3,
            floating: true,
            pinned: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/help.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(elemanlar()),
          ),
        ],
      ),
    );
  }

  List<Widget> elemanlar() {
    List<String> questions = List();
    List<String> answers = List();
    questions.add("ParkCapp Nedir");
    questions.add("ParkCapp Uygulamasını Nasıl Kullanırım");
    questions.add("ParkCapp Uygulamasını Kimler Kullanabilir");
    questions.add("Rezervasyonlarımı Nasıl Görebilirim");
    questions.add("Geçmiş Rezervasyonlarımı Görebilir miyim");
    questions.add("Kayıt olmak için aracımın olması gerekli mi?");
    questions.add("Hangi bölgelerde hizmet veriyorsunuz ?");
    questions.add("Uygulamada hediye avantajları var mıdır?");
    questions.add("Rezervasyonlarımı derecelendirebilir miyim ?");
    answers.add(
        "ParkCapp Online otopark rezervasyonu yapabileceğiniz bir mobil uygulamadır.");
    answers.add(
        "Nasıl Kullanırım Bölümünden görsel anlatım yardımıyla detaylı bilgi edinebilirsiniz.");
    answers.add(
        "Uygulamayı kullanmak için bir kısıtlama yoktur,otopark sorunu yaşayan herkes katılabilir.");
    answers.add(
        "Rezervasyonlarım bölümünden aktif olan rezervasyonunuz detatlarına tıklayarak öğrenebilirsiniz");
    answers.add(
        "Geçmiş Rezervasyonlar alanından listeleyebilir ve tarihe göre filtreleyebilirsiniz.");
    answers.add(
        "Kayıt olmak için aracınızın olmasına gerek yoktur. Rezervasyon ihtiyacınız var ise kullanabilirsiniz.");
    answers.add(
        "Tüm Türkiye de hizmet vermekteyiz.");
    answers.add(
        "Rezervasyonlar ile puan biriktirerek ödemeerinizde kullanabilirsiniz.");
    answers.add(
        "Rezervasyon süreniz bittikten sonra geçmiş rezervasynlardan puan verebilirsiniz.");
    return [
      for (int i = 0; i < questions.length; i++)
        elemanlaralt(questions[i], answers[i]),
    ];
  }

  Widget elemanlaralt(qs, as) {
    return ExpansionTile(
      title: Text(
        qs,
        style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold
        ),
      ),
      children: <Widget>[
        Container(
            height: 80,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 20),
              child: Text(
                as,
                style: TextStyle(
                    color:Colors.blue.shade700,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}
