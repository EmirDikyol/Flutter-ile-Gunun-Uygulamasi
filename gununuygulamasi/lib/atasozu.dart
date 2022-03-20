import 'package:flutter/material.dart';
import 'dart:math';
import 'constants.dart';

class AtaSozu extends StatefulWidget {
  static String routeName = '/AtaSozu';

  @override
  State<AtaSozu> createState() => _AtaSozuState();
}

class _AtaSozuState extends State<AtaSozu> {
  int yanit = 0;

  List<String> atasozleri = [
    'TIKLA ATASÖZ GELSİN',
    'Deli deliden hoşlanır, imam ölüden.',
    'Ek tohumun hasını, çekme yiyecek yasını.',
    'Gafile kelâm, nafile kelâm.',
    'Hamama giren terler.',
    'Kaçan balık büyük olur.',
    'Yabancı koyun kenara yatar.',
    'Yalancının mumu yatsıya kadar yanar.',
    'Yapı taşı, yapıdan kalmaz.',
    'Rüzgârın önüne düşmeyen yorulur.',
    'Rüzgâr eken, fırtına biçer.',
  ];

  List<String> anlamlari = [
    'ANLAMLARI',
    'Kişiler, her bakımdan (mevki, yaş, fikir, duygu, eğitim v.b.) kendilerine benzeyen, uygun olan ya da yarar yağlayabilecekleri kimse ve şeylerden hoşlanıp onlara yaklaşırlar.',
    'Bir işten sağlıklı bir sonuç almak istiyorsan onu sağlam temel üzerine oturt. Nitelikli tohumdan güzel ve bol ürün alındığı bilinen bir şey. Bunun gibi nitelikli insan, nitelikli araç ve gereçle iyi iş yapılır; olumlu sonuç alınır.',
    'Çevresindeki gerçekleri görmeyen, sezmeyen, bilgisiz, dalgın kimseye ne söylense kâr etmez. O, bildiği gibi hareket eder. Dolayısıyla ona söylenecek her söz boşa gider.',
    'Bir işe girişen kimse, o işin güçlüklerini, sıkıntılarını ve masraflarını göze almalıdır. Çünkü bu işin durumunu, sorumluluğunu kendi isteğiyle kabul etmiştir.',
    'Çok önemsiz, çok küçük de olsa, her nedense elden kaçırılan fırsat ah vah edilerek gözde büyütülür.',
    'Bir yere, çevreye ya da bir topluma yeni gelen kimse, insanlarla hemen ilişki kurup kaynaşamaz; onların arasına giremez, uzakta durur. Çünkü yabancılık çeker. ',
    'Hayatını yalancılık üzerine oturtmuş olan insanlar, kendi yalanlarına destek olacak tedbirleri alırlar; bunun için de gerekli titizliği gösterip masrafa girerler.',
    'Değerli, elinden iş gelen kimse boşta kalmaz. Mutlaka kendisine bir iş bulunur.',
    'Toplumun genel gidişatına, ilkelerine, değer yargılarına karşı çıkan, uymayıp ters yönde hareket eden kişi pek çok engellerle karşılaşır; yorulup yıpranır',
    'Kişi bir kötülük yaparsa, yaptığı kötülüğün çok daha kötüsü ile karşılaşır; büyük felâketlere uğrar, zarar görür.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScaffoldColor,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        centerTitle: true,
        title: Text(
          'ATASÖZÜ',
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
                'ATASÖZÜ',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),/// En üstteki yazı
            SizedBox(
              height: 5.0,
            ),
            Atasozleri_Container(atasozleri: atasozleri, yanit: yanit),/// Atasözlerinin gösterildiği yer
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
            Anlamlari_Container(anlamlari: anlamlari, yanit: yanit),/// Anlamlarının gösterildiği yer
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
                  'TIKLA ATASÖZÜN GELSİN',
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
            ), /// Geri dön
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

class Atasozleri_Container extends StatelessWidget {
  const Atasozleri_Container({
    Key? key,
    required this.atasozleri,
    required this.yanit,
  }) : super(key: key);

  final List<String> atasozleri;
  final int yanit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      color: ContainerColor,
      width: 300,
      height: 100,
      child: Text(
        atasozleri[yanit],
        style: AtasozuContainerMetinDili,
        textAlign: TextAlign.center,
      ),
    );
  }
}
