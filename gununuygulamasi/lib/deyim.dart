import 'dart:math';

import 'package:flutter/material.dart';

import 'constants.dart';

class Deyim extends StatefulWidget {
  static String routeName = '/Deyim';

  @override
  State<Deyim> createState() => _DeyimState();
}

class _DeyimState extends State<Deyim> {
  int yanit = 0;

  List<String> deyimler = [
    'TIKLA DEYİM GELSİN',
    'Ağzında bakla ıslanmamak.',
    'Armudun sapı var, üzümün çöpü var demek.',
    'Başına çorap örmek',
    'Kafasına koymak.',
    'Kaleyi içinden fethetmek.',
    'Paraya para dememek.',
    'Pay biçmek.',
    'Payidar olmak.',
    'Volta atmak.',
    'Vur patlasın çal oynasın.',
  ];

  List<String> anlamlari = [
    'ANLAMLARI',
    'Sır saklamayı becerememek, sırrı hemen açığa vurmak.',
    'Hiçbir şeyi beğenmemek, her şeyin bir kusurunu bulmak.',
    'Birini kötü duruma düşürmek için gizli plan ha zırlamak; çorap örmek.',
    'Bir şeyi yapmaya kararlı olup zamanını beklemek.',
    'Karşı taraftan birinin yardımını alarak davasını kazanmak',
    'Çok para kazanmak.',
    'Bir fikir elde edebilmek için, durumu bir şey ile kıyaslamak.',
    'Kalmak, yok olmamak, yaşamak.',
    'Bir aşağı bir yukarı dolaşmak, gidip gelmek.',
    'Aşırı zevk ve eğlence; aşırı zevk ve eğlenceye düşkün kimsenin parasını bu yolda harcamasını anlatır.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScaffoldColor,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        centerTitle: true,
        title: Text(
          'DEYİM',
          style: AppBarMetinDili,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'DEYİM',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),/// En üstteki yazı
            Deyimler_Container(deyimler: deyimler, yanit: yanit),/// Deyimlerin gösterildiği yer
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                'ANLAMI',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),/// Anlamı yazısı
            SizedBox(
              height: 5.0,
            ),
            Anlamlari_Container(anlamlari: anlamlari, yanit: yanit),///Anlamların gösterildiği yer
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: CardColor,
              child: ListTile(
                onTap: () {
                  setState(() {
                    yanit = Random().nextInt(10) + 1;
                    print(yanit);
                  });
                },
                title: Text(
                  'TIKLA DEYİM GELSİN',
                  style: CardMetinDili,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),/// Tıkla gelsin Buton
            Card(
              color: CardColor,
              child: RaisedButton(
                color: CardColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'GERİ DÖN',
                  style: CardMetinDili,
                ),
              ),
            ),/// Geri dön
          ],
        ),
      ),
    );
  }
}

class Anlamlari_Container extends StatelessWidget {
  const Anlamlari_Container({
    Key? key,
    required this.anlamlari,
    required this.yanit,
  }) : super(key: key);

  final List<String> anlamlari;
  final int yanit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      color: ContainerColor,
      width: 300,
      height: 120,
      child: Text(
        anlamlari[yanit],
        style: AnlamContainerMetinDili,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Deyimler_Container extends StatelessWidget {
  const Deyimler_Container({
    Key? key,
    required this.deyimler,
    required this.yanit,
  }) : super(key: key);

  final List<String> deyimler;
  final int yanit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      color: ContainerColor,
      width: 300,
      height: 100,
      child: Text(
        deyimler[yanit],
        style: AtasozuContainerMetinDili,
        textAlign: TextAlign.center,
      ),
    );
  }
}
