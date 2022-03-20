import 'dart:math';

import 'package:flutter/material.dart';

import 'constants.dart';

class OzluSoz extends StatefulWidget {
  static String routeName = '/OzluSoz';

  @override
  State<OzluSoz> createState() => _OzluSozState();
}

class _OzluSozState extends State<OzluSoz> {
  int yanit = 0;

  List<String> ozlusoz = [
    'TIKLA ÖZLÜ SÖZ GELSİN',
    'Yenileceğinden Korkan, Daima Yenilir!',
    'Kudüs İşgal Altındayken Ben Nasıl Gülebilirim?',
    'Başkalarından iktidar ve mülk bakımından üstün olacağıma bilgi bakımından üstün olmayı tercih ederim.',
    'Hak Arayan Varsa Hakkını Verin. Baş Kaldıran Varsa Başını Kesin! ',
    'Bağımsızlık, uğruna ölmesini bilen toplumların hakkıdır.',
    'Korkunu fethet; sana söz veriyorum dünyayı fethedeceksin. ',
    'Yapmak istediğimi sakalımın bir teli bile bilseydi, sakalımın o telini hemen koparır ve yakardım.',
    'Askerlikten anlayanlar iyi bilirler ki bir ordunun zafer kazanması için sadece asker ve silah yeterli değildir. Dünya askerlik tarihindeki en önemli örnekler de görüldüğü gibi büyük askeri zaferler ancak büyük komutanlarla kazanılır. ',
    'Biz TürkIer, bütün tarihimiz boyunca hürriyet ve istiklale timsal oImuş bir milletiz.',
    'Bizim Kudretimizin Ulaştığı Yere Sizin Hayalleriniz Bile Ulaşamaz!',
  ];

  List<String> soyleyenin = [
    'Söyleyeni',
    'Yıldırım Bayezid',
    'Selahaddin Eyyubi',
    'Büyük İskender',
    '2. Abdülhamid Han',
    'Atatürk',
    'Büyük İskender',
    'Fatih Sultan Mehmet Han',
    'Gazi Osman Paşa',
    'Atatürk',
    'Fatih Sultan Mehmet Han',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScaffoldColor,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        centerTitle: true,
        title: Text(
          'ÖZLÜ SÖZ',
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
                'Söyleyen',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ), /// Söyleyeni yazı
            SizedBox(
              height: 5.0,
            ),
            Soyleyen_Container(soyleyenin: soyleyenin, yanit: yanit), /// Söyleyenin gösterildiği yer
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                'ÖZLÜ SÖZ',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ), /// Özlü Söz yazısı
            SizedBox(
              height: 5.0,
            ),
            OzluSoz_Container(ozlusoz: ozlusoz, yanit: yanit),/// Özlü Sözün gösterildiği yer
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
                  'TIKLA ÖZLÜ SÖZÜN GELSİN',
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

class OzluSoz_Container extends StatelessWidget {
  const OzluSoz_Container({
    Key? key,
    required this.ozlusoz,
    required this.yanit,
  }) : super(key: key);

  final List<String> ozlusoz;
  final int yanit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      color: ContainerColor,
      width: 300,
      height: 120,
      child: Text(ozlusoz[yanit],style: AnlamContainerMetinDili,textAlign: TextAlign.center,),
    );
  }
}

class Soyleyen_Container extends StatelessWidget {
  const Soyleyen_Container({
    Key? key,
    required this.soyleyenin,
    required this.yanit,
  }) : super(key: key);

  final List<String> soyleyenin;
  final int yanit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      color: ContainerColor,
      width: 300,
      height: 100,
      child: Text(
        soyleyenin[yanit],
        style: AtasozuContainerMetinDili,
        textAlign: TextAlign.center,
      ),
    );
  }
}
