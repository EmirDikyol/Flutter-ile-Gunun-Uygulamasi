import 'package:flutter/material.dart';
import 'package:gununuygulamasi/atasozu.dart';
import 'package:gununuygulamasi/constants.dart';
import 'package:gununuygulamasi/deyim.dart';
import 'package:gununuygulamasi/ozlusoz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => AnaSayfa(),
        '/AtaSozu': (context) => AtaSozu(),
        '/Deyim': (context) => Deyim(),
        '/OzluSoz': (context) => OzluSoz(),
      },
      // home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  static String routeName = '/';
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScaffoldColor,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        centerTitle: true,
        title: Text(
          'ANA SAYFA',
          style: AppBarMetinDili,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage(
                  'assets/images/space.jpg',
                ),
              ),
              SizedBox(height: 10.0),
              ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: FlatButtonColor,
                  onPressed: () {
                    Navigator.pushNamed(context, AtaSozu.routeName);
                  },
                  child: Text(
                    'GÜNÜN ATASÖZÜ',
                    style: FlatButtonMetinDili,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: FlatButtonColor,
                  onPressed: () {
                    Navigator.pushNamed(context, Deyim.routeName);
                  },
                  child: Text(
                    'GÜNÜN DEYİMİ',
                    style: FlatButtonMetinDili,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: FlatButtonColor,
                  onPressed: () {
                    Navigator.pushNamed(context, OzluSoz.routeName);
                  },
                  child: Text(
                    'GÜNÜN ÖZLÜ SÖZÜ',
                    style: FlatButtonMetinDili,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
