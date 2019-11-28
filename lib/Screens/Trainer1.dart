import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Info/variables.dart' as global;



var date = DateTime.now();

//  var day2,day3,day4;

final day2 = date.add(new Duration(days: 1));
// final day4 = date.add(new Duration(days: 3));
var daten3=DateFormat("yyyy-MM-dd").format(day2);
// final day3 = date.add(new Duration(days: 2));

// final day4 = date.add(new Duration(days: 3));
// var date2 = DateFormat("d MMM").format(day2);
// var date3 = DateFormat("d MMM").format(day3);
// var date4 = DateFormat("d MMM").format(day4);

textStyle() {
  TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700);
}

class Trainer1 extends StatefulWidget {
  Trainer1({Key key}) : super(key: key);

  @override
  _Trainer1State createState() => _Trainer1State();
}

class _Trainer1State extends State<Trainer1> {

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void callSnackBar(String msg, [int er]) {
    // msg="There is no record with this user, please register first by clicking Register or check the user mail id or Password";
    final SnackBar = new prefix0.SnackBar(
      content: new Text(msg),
      duration: new Duration(seconds: 1),
     
    );
    _scaffoldKey.currentState.showSnackBar(SnackBar);
  }

  var jsonResponse;

bool g1=false;bool g2=false;bool g3=false;bool g4=false;bool g5=false;bool g6=false;bool g7=false;bool g8=false;
bool g9=false;bool g10=false;bool g11=false;bool g12=false;bool g13=false;bool g14=false;bool g15=false;bool g16=false;
bool g17=false;bool g18=false;

bool s1=false;bool s2=false;bool s3=false;bool s4=false;bool s5=false;bool s6=false;bool s7=false;bool s8=false;
bool s9=false;bool s10=false;bool s11=false;bool s12=false;bool s13=false;bool s14=false;bool s15=false;bool s16=false;
bool s17=false;bool s18=false;
  @override
  void initState() {

    super.initState();
    // gettrainers();
    print(daten3);
    
  }

  // gettrainers() async {
  //   var response = await http.get(
  //       "http://test.letsdooit.in:3000/api/workplace/gettrainers",
  //       headers: {
  //         // "Content-type": "application/x-www-form-urlencoded",
  //         "token": global.token,
  //         // "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZSI6Ijc3Mzg2OTU5MjgiLCJpYXQiOjE1NzQ2MDcwNTAsImV4cCI6MTE2NTQ2MDcwNTB9.-eHmrhKWK4dBMESMLOD79QRQGx7J75MneKnkcnmQ6bA",
  //       });
  //   if (response.statusCode == 200) {
  //     jsonResponse = json.decode(response.body);
  //     if (jsonResponse['success'] == true) {
  //       setState(() {
  //         // global.completedSlots = jsonResponse['completedsession'];
  //         global.trainers = jsonResponse['trainers'];
  //         print(global.trainers);
  //         print(global.trainers.length);
  //         // getAccountDetails();
  //       });
  //     }
  //   } else {
  //     print('error');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var gold;
    return Scaffold(
      key: _scaffoldKey,
      body:
    ListView(children: <Widget>[
      Column(
        children: <Widget>[
          SizedBox(
            // padding: EdgeInsets.only(left: 1.0, right: 5.0),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 1.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Time Slot',
                  style: TextStyle(
                      // color: Colors.red,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                ),
                Text('Gold', style: TextStyle( fontSize: 15.0,
                      fontWeight: FontWeight.w500)),
                Text(
                  '   Silver',
                  style: TextStyle(
                      // color: Colors.red,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Save Changes',
                  style: TextStyle(
                      // color: Colors.red,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),

          //  Divider(
          //   thickness: 1.0,
          //   color: Colors.black,
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('6:00 AM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g1,
                  onChanged: (bool value) {
                    setState(() {
                      g1 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s1,
                  onChanged: (bool value) {
                    setState(() {
                      s1 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g1==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s1==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s1==false&&g1==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T06:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";

                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('7:00 AM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g2,
                  onChanged: (bool value) {
                    setState(() {
                      g2 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s2,
                  onChanged: (bool value) {
                    setState(() {
                      s2 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g2==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s2==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s2==false&&g2==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T07:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('8:00 AM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g3,
                  onChanged: (bool value) {
                    setState(() {
                      g3 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s3,
                  onChanged: (bool value) {
                    setState(() {
                      s3 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g3==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s3==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s3==false&&g3==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T08:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T08:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('9:00 AM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g4,
                  onChanged: (bool value) {
                    setState(() {
                      g4 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s4,
                  onChanged: (bool value) {
                    setState(() {
                      s4 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g4==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s4==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s4==false&&g4==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T09:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('10:00 AM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g5,
                  onChanged: (bool value) {
                    setState(() {
                      g5 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s5,
                  onChanged: (bool value) {
                    setState(() {
                      s5 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                 onTap: ()async {
                    
                    if(g5==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s5==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s5==false&&g5==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T10:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('11:00 AM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g6,
                  onChanged: (bool value) {
                    setState(() {
                      g6 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s6,
                  onChanged: (bool value) {
                    setState(() {
                      s6 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                onTap: ()async {
                    
                    if(g6==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s6==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s6==false&&g6==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T11:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('12:00 AM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g7,
                  onChanged: (bool value) {
                    setState(() {
                      g7 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s7,
                  onChanged: (bool value) {
                    setState(() {
                      s7 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g7==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s7==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s7==false&&g7==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T12:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('1:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g8,
                  onChanged: (bool value) {
                    setState(() {
                      g8 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s8,
                  onChanged: (bool value) {
                    setState(() {
                      s8 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                 onTap: ()async {
                    
                    if(g8==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s8==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s8==false&&g8==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T13:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),

                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('2:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g9,
                  onChanged: (bool value) {
                    setState(() {
                      g9 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s9,
                  onChanged: (bool value) {
                    setState(() {
                      s9 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                 onTap: ()async {
                    
                    if(g9==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s9==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s9==false&&g9==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T14:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('3:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g10,
                  onChanged: (bool value) {
                    setState(() {
                      g10 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s10,
                  onChanged: (bool value) {
                    setState(() {
                      s10 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g10==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s10==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s10==false&&g10==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T15:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('4:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g11,
                  onChanged: (bool value) {
                    setState(() {
                      g11 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s11,
                  onChanged: (bool value) {
                    setState(() {
                      s11 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                onTap: ()async {
                    
                    if(g11==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s11==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s11==false&&g11==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T16:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('5:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g12,
                  onChanged: (bool value) {
                    setState(() {
                      g12 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s12,
                  onChanged: (bool value) {
                    setState(() {
                      s12 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g12==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s12==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s12==false&&g12==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T17:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('6:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g13,
                  onChanged: (bool value) {
                    setState(() {
                      g13 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s13,
                  onChanged: (bool value) {
                    setState(() {
                      s13 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g13==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s13==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s13==false&&g13==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T18:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('7:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g14,
                  onChanged: (bool value) {
                    setState(() {
                      g14 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s14,
                  onChanged: (bool value) {
                    setState(() {
                      s14 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                onTap: ()async {
                    
                    if(g14==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s14==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s14==false&&g14==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T19:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('8:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g15,
                  onChanged: (bool value) {
                    setState(() {
                      g15 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s15,
                  onChanged: (bool value) {
                    setState(() {
                      s15 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g15==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s15==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s15==false&&g15==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T20:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('9:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g16,
                  onChanged: (bool value) {
                    setState(() {
                      g16 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s16,
                  onChanged: (bool value) {
                    setState(() {
                      s16 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: ()async {
                    
                    if(g16==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s16==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s16==false&&g16==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T21:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('10:00 PM', style: textStyle()),
                // IconButton(
                //   iconSize: 15.0,
                //   icon: Icon(Icons.phone_in_talk),
                //   onPressed: () {},
                // ),
                Checkbox(
                  value: g17,
                  onChanged: (bool value) {
                    setState(() {
                      g17 = value;
                    });
                  },
                ),
                Checkbox(
                  value: s17,
                  onChanged: (bool value) {
                    setState(() {
                      s17 = value;
                    });
                  },
                ),
                InkWell(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                onTap: ()async {
                    
                    if(g17==true)
                    {
                      global.tempForCategory="gold,";
                      global.tp="active";
                    }
                    if(s17==true)
                    {
                      global.tempForCategory=global.tempForCategory+"silver";
                      global.tp="active";
                    }
                    if(s17==false&&g17==false)
                    {
                      // global.temp="inactive";
                      global.tp="not active";
                      global.tempForCategory="";
                    }

                                                  Map data = {
                                                  // "date_time":"2019-11-28T06:00:00.000Z",
                                                  // "session_type":"gold",
                                                  // "trainer_status":"active"
                                                  "date_time":daten3.toString()+"T22:00:00.000Z",
                                                  "session_type":global.tempForCategory.toString(),
                                                  "trainer_status":global.tp.toString()      
                                  };
                                  print(data);
                                                var response = await http.post(
                                    "http://test.letsdooit.in:3000/api/trainer/manageworkslot",
                                    body:data,
                                    headers: {
                                      // "Content-type": "application/json",
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
                                      print("Success");
                                      callSnackBar("saved successfully");                                      
                                    });
                                    //  getPast();
                                  }
                                  else if (jsonResponse['success'] == false) {
                                    print("got response0 false");
                                    setState(() {
                                      print("Success no");
                                       callSnackBar("something went wrong,please try it again");  
                                      
                                    });
                                    
                                  }
                                } 
                                else {
                                  callSnackBar("something went wrong"); 
                                  print('error');
                                }
                                global.tempForCategory="";
                                global.tp="";


                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),

         
        ],
      )
    ])
    );
  }

}

