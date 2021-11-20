import 'package:OTOBUShw/region.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

Color apcolor = const Color(0xFF1ABC9C);
Color apBcolor = const Color(0xFF00796B);
Color iconBack = const Color(0xFF0e6655);

Color bacolor = const Color(0xFFBDBDBD);
Color ba1color = const Color(0xFFf2f1e3);
Color myG = const Color(0xFFebe9e2);

Color mypink = const Color(0xFFbc1a3a);
Color myOrange = const Color(0xFFbc4b1a);
Color myPink = const Color(0xFFbc1a8b);
Color myblue = const Color(0xFF1a8bbc);
Color mygreen = const Color(0xFF1abc4b);

const List<Color> myGradients1 = [
  Color(0xFF02100d),
  Color(0xFF05211b),
  Color(0xFF07322a),
  Color(0xFF094338),
  Color(0xFF0c5546),
  Color(0xFF0e6655),
  Color(0xFF107763),
  Color(0xFF138871),
  Color(0xFF159a7f),
  Color(0xFF18ab8e),
  Color(0xFF1abc9c), //this is my color
  Color(0xFF1ccdaa),
  Color(0xFF1fdeb9),
];
const List<Color> myGradients2 = [
  Color(0xFF1fdeb9),
  Color(0xFF1ccdaa),
  Color(0xFF1abc9c), //this is my color
  Color(0xFF18ab8e),
  Color(0xFF159a7f),
  Color(0xFF138871),
  Color(0xFF107763),
  Color(0xFF0e6655),
  Color(0xFF0c5546),
  Color(0xFF094338),
  Color(0xFF07322a),
  Color(0xFF05211b),
  Color(0xFF02100d),
];
const List<Color> myGradients3 = [
  Color(0xFF1abc74),
  Color(0xFF1abc81),
  Color(0xFF1abc8f),
  Color(0xFF1abc9c),
  Color(0xFF1abcaa),
  Color(0xFF1abcb7),
  Color(0xFF1ab4bc),
];
const List<Color> myGradients4 = [
  Color(0xFF64726f),
  Color(0xFF5c7a74),
  Color(0xFF548279),
  Color(0xFF4b8b7e),
  Color(0xFF439383),
  Color(0xFF3b9b88),
  Color(0xFF33a38d),
  Color(0xFF2aac92),
  Color(0xFF22b497),
  Color(0xFF1abc9c), //this is my color
  Color(0xFF12c4a1),
  Color(0xFF0acca6),
  Color(0xFF01d5ab),
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //لإخفاء شريط depug
        home: Scaffold(
            backgroundColor: iconBack, //ba1color,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              actions: <Widget>[
                new Container(),
              ],
              title: Center(
                child: Text(
                  "OtoBüs",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
              ),
              backgroundColor: apcolor,
            ),
            body: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: SelectCard(choice: choices[index]),
                  );
                }))));
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'طوباس'),
  const Choice(title: 'طمون'),
  const Choice(title: 'الفارعة'),
  const Choice(title: 'الباذان'),
  const Choice(title: 'طلوزة'), //, icon: Icons.camera_alt
  const Choice(title: 'النصارية'),
  const Choice(title: 'بيتا'),
  const Choice(title: 'عقربة'),
  const Choice(title: 'عصيرة '),
  const Choice(title: 'حوارة'),
  const Choice(title: 'بيت دجن'),
  const Choice(title: 'بيت فوريك'),
  const Choice(title: 'سالم'),
  const Choice(title: 'دير الحطب'),
  const Choice(title: 'روجيب'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: iconBack,
      child: //Center(
          //child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //children: <Widget>[
          //Expanded(child:Icon(choice.icon, size: 50.0, color: color.white)),
          RaisedButton(
              onPressed: () {
                //Navigator.push(context, )
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => region()),
                );
              },
              child: Text(
                choice.title,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'ArefRuqaaR',
                  color: Colors.black,
                ),
              )),
      //]),
    );
  }
}
