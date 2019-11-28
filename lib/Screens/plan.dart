import 'package:flutter/material.dart';
import 'package:trainer/Screens/Trainer.dart';
import 'package:trainer/Screens/Trainer.dart';
import 'package:trainer/Screens/Trainer.dart' as prefix0;
import 'package:trainer/Screens/Trainer1.dart';
import 'package:trainer/Screens/Trainer2.dart';
import 'package:trainer/Screens/Trainer3.dart';
import "package:intl/intl.dart";


var date = DateTime.now();
//  var day2,day3,day4;

final day2 = date.add(new Duration(days: 1));
final day3 = date.add(new Duration(days: 2));

final day4 = date.add(new Duration(days: 3));
var date2 = DateFormat("d MMM").format(day2);
var date3 = DateFormat("d MMM").format(day3);
var date4 = DateFormat("d MMM").format(day4);
void main() {
  for (int i = 2; i <= 4; i++) {
    print(date2 + "\n" + date3 + "\n" + date4);
  }
}


class Plans extends StatefulWidget {
  Plans({Key key}) : super(key: key);

  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height /
                12.0), // here the desired height
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    child: Text("Today",
                        style: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height / 38.0)),
                  ),
                  Tab(
                    child: Text(
                      date2,
                      style: TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 38.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      date3,
                      style: TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 38.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      date4,
                      style: TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 38.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Today(),
               Nxt(),
                Nxt1(),
                 Nxt2()
                 ],
          ),
        ),
      ),
    );
  }
}

class Today extends StatefulWidget {
  Today({Key key}) : super(key: key);

  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return prefix0.Trainer();
  }
}

class Nxt extends StatefulWidget {
  Nxt({Key key}) : super(key: key);

  _NxtState createState() => _NxtState();
}

class _NxtState extends State<Nxt> {
  @override
  Widget build(BuildContext context) {
    return Trainer1();
  }
}

class Nxt1 extends StatefulWidget {
  Nxt1({Key key}) : super(key: key);

  _Nxt1State createState() => _Nxt1State();
}

class _Nxt1State extends State<Nxt1> {
  @override
  Widget build(BuildContext context) {
    return Trainer2();
  }
}

class Nxt2 extends StatefulWidget {
  Nxt2({Key key}) : super(key: key);

  _Nxt2State createState() => _Nxt2State();
}

class _Nxt2State extends State<Nxt2> {
  @override
  Widget build(BuildContext context) {
    return Trainer3();
  }
}
