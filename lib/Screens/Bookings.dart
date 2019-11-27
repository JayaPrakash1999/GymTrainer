import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:trainer/Arrangements/ShowImage.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Info/variables.dart' as global;
import 'package:http/http.dart' as http;

import '../Screens/plan.dart';

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  
  
final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();
    void callSnackBar(String msg,[int er])
  {
    
      // msg="There is no record with this user, please register first by clicking Register or check the user mail id or Password";
      final SnackBar=new prefix0.SnackBar(
      content: new Text(msg),
      duration: new Duration(seconds: 5),
      action: new SnackBarAction(label: "Exit",
      onPressed: (){
        // Navigator.pushNamed(context, "Register");
        exit(0);
      },),
    );
     _scaffoldKey.currentState.showSnackBar(SnackBar);
    
  }

  var jsonResponse;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    // getUpcoming();
    // getPast();
    // getAccountDetails();
    // getPending();
    // getConfirm();
  }

  getData()async{


    getUpcoming();
    getPast();
    getAccountDetails();
    // getPending();
    // getConfirm();
    // getPaid();
    // getTrainers();
    

    
  }


  getUpcoming() async {
    print("in upcoming");
    print(global.now);

  Map data={
    "sdate":global.now.toString(),
  };
    var response = await http.post(
        "http://34.93.104.9:3000/api/trainer/upcomingsessions",body: data,
        headers: {
          "Content-type": "application/x-www-form-urlencoded",
          "token": 
          global.token,
          // "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZSI6Ijc3Mzg2OTU5MjgiLCJpYXQiOjE1NzQ2MDcwNTAsImV4cCI6MTE2NTQ2MDcwNTB9.-eHmrhKWK4dBMESMLOD79QRQGx7J75MneKnkcnmQ6bA",
        });
      print("clicked");
    if (response.statusCode == 200) {
      print("got response0");
      jsonResponse = json.decode(response.body);
      if (jsonResponse['success'] == true) {
        print("got response0 true");
        setState(() {
          // global.completedSlots = jsonResponse['completedsession'];
          global.upcomingsessions = jsonResponse['sessions'];
          print(global.upcomingsessions);
          // print(global.upcomingsessions);
          print(global.upcomingsessions.length);
          // print(global.upcomingsessions[0]['account']['name']);
          // print(global.upcomingsessions[0]['trainer_allotted']['name']);
          // getAccountDetails();
                
           });
          //  getPast(); 
      }
    } else {
      print('error');
    }
  }

  getPast() async {
    print("in past");
    var response = await http
        .get("http://34.93.104.9:3000/api/trainer/completedsessions", headers: {
      // "Content-type": "application/x-www-form-urlencoded",
      "token": 
      global.token,
      // "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZSI6Ijc3Mzg2OTU5MjgiLCJpYXQiOjE1NzQ2MDcwNTAsImV4cCI6MTE2NTQ2MDcwNTB9.-eHmrhKWK4dBMESMLOD79QRQGx7J75MneKnkcnmQ6bA",
    });
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse['success'] == true) {
        print("in success past or completed");
        setState(() {
          // global.completedSlots = jsonResponse['completedsession'];
          global.pastsessions = jsonResponse['sessions'];
          print(global.pastsessions);
          // print(global.pastsessions);
          // print(global.pastsessions.length);
          // print(global.pastsessions[0]['account']['name']);
          // print(global.pastsessions[0]['workplace']['address']);
          // getAccountDetails();
        });
      }
    } else {
      print('error');
    }
  }
  
 getAccountDetails() async {
    var response = await http
        .get("http://34.93.104.9:3000/api/trainer/getaccountdetails", headers: {
      // "Content-type": "application/x-www-form-urlencoded",
      "token":global.token,
          // "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZSI6Ijc3Mzg2OTU5MjgiLCJpYXQiOjE1NzQ2MDcwNTAsImV4cCI6MTE2NTQ2MDcwNTB9.-eHmrhKWK4dBMESMLOD79QRQGx7J75MneKnkcnmQ6bA",
    });
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse['success'] == true) {
        setState(() {
        global.AccountDetails=jsonResponse;
        // print
        print(global.AccountDetails);
        // global.referralCode=global.AccountDetails['workplace']['uid'];
        // print(global.referralCode);
        //  global.userName=jsonResp,
        //  global.phone=,
        });
      }
    } else {
      print('error');
    }
  }









  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: MediaQuery.of(context).size.height / 32.0);
    }

    return WillPopScope(
        onWillPop: () {
          // Navigator.pushNamed(context,"SignUpPage");
          callSnackBar("Click Exit to leave The App");

        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Montserrat', accentColor: Colors.red),
          routes: <String, WidgetBuilder>{},
          home: new DefaultTabController(
            length: 2,
            child: new Scaffold(
              key: _scaffoldKey,
              appBar: PreferredSize(
                preferredSize:
                    Size.fromHeight(MediaQuery.of(context).size.height / 6.5),
                child: AppBar(
                  elevation: 0.0,
                  actions: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 35.0,
                          left: MediaQuery.of(context).size.width / 20,
                          right: MediaQuery.of(context).size.width / 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.width / 20.3333,
                              width: MediaQuery.of(context).size.width / 3.3333,
                              child: ShowImage("2ndscreenlogo"),
                            ),
                            SizedBox(
                              child: Text("Center Code: " + global.referralCode,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                            InkWell(
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.205,
                                width: MediaQuery.of(context).size.width / 7.0,
                                child: ShowImage("userimg"),
                              ),
                              onTap: () {
                                print(global.referralCode);
                                print("pressed");
                                Navigator.pushNamed(context, "AccountPage");
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                  backgroundColor: Colors.white,
                  bottom: TabBar(
                    tabs: <Widget>[
                      Tab(
                        child: Text("Plan", style: textStyle()),
                      ),
                      Tab(
                        child: Text("Bookings", style: textStyle()),
                      ),
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Plans(),
                  Bookings(),
                ],
              ),
            ),
          ),
        ));
  }
}

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 2,
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
                    child: Text("Upcoming",
                        style: TextStyle(
                            color: Colors.black,
                            backgroundColor: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height / 35.0)),
                  ),
                  Tab(
                    child: Text(
                      "Past",
                      style: TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 35.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Upcoming(),
              Past(),
            ],
          ),
        ),
      ),
    );
  }
}

class Upcoming extends StatefulWidget {
  // Upcoming({Key key}) : super(key: key);

  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Column(children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: global.upcomingsessions.length == 0
                ? Center(child: Text("no data"))
                : ListView.builder(
                    itemCount: global.upcomingsessions.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.23,
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: ShowImage('gym_pic2'),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Gold Trainer Sessions',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
                                      ),
                                       Text(
                                        ''+global.upcomingsessions[index]['timeslot'],
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        "Fusion Gym",
                                        // global.upcomingsessions[index]['workplace'].toString(),
                                        // global.upcomingsessions[index]['workplace']==null?"NULL":global.upcomingsessions[index]['workplace'].toString(),
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                         Text(
                                        "Client: " +
                                            global.upcomingsessions[index]
                                                ['account']['name'],
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0),
                                      ),
                                     
                                        IconButton(
                                            iconSize: 30.0,
                                            icon: Icon(Icons.phone_in_talk),
                                            onPressed: () {
                                              print("Clicked");
                                              print("launching");
                                              launch(
                                                  "tel:+91${global.upcomingsessions[index]['account']['phone']}");
                                            },
                                          )
                                      ],),
                                      // Text(
                                      //   "Client: " +
                                      //       global.upcomingsessions[index]
                                      //           ['account']['name'],
                                      //   style: TextStyle(
                                      //       color: Colors.red,
                                      //       fontWeight: FontWeight.w600,
                                      //       fontSize: 18.0),
                                      // ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceBetween,
                                      //   children: <Widget>[
                                      //     Text(
                                      //       "Trainer: " +
                                      //           global.upcomingsessions[index]
                                      //                   ['trainer_allotted']
                                      //               ['name'],
                                      //       style: TextStyle(
                                      //           fontWeight: FontWeight.w600,
                                      //           fontSize: 15.0),
                                      //     ),
                                      //     IconButton(
                                      //       iconSize: 30.0,
                                      //       icon: Icon(Icons.phone_in_talk),
                                      //       onPressed: () {
                                      //         print("Clicked");
                                      //         print("launching");
                                      //         launch(
                                      //             "tel:+91${global.trainers[index]['phone']}");
                                      //       },
                                      //     )
                                      //   ],
                                      // )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }))
      ])
    ]);
  }
}

class Past extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Column(children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 0.95,
          child: global.pastsessions.length == 0
              ? Center(child: Text("no data"))
              : ListView.builder(
                  itemCount: global.pastsessions.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: ShowImage('gym_pic2'),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.50,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Gold Trainer Sessions',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0),
                                    ),
                                    Text(
                                      global.pastsessions[index]['timeslot'] +
                                          global.pastsessions[index]
                                              ['workplace']['address'],
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'Client: ' +
                                          global.pastsessions[index]['account']
                                              ['name'],
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
        )
      ]),
    ]);
  }
}

// class Plan extends StatefulWidget {
//   Plan({Key key}) : super(key: key);

//   _PlanState createState() => _PlanState();
// }

// class _PlanState extends State<Plan> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
