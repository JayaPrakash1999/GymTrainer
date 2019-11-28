import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import '../Info/variables.dart' as global;

bool g1=false;
bool g2=false;bool g3=false;bool g4=false;bool g5=false;bool g56false;bool g7=false;bool g8=false;
bool s1=false;bool s2=false;bool s3=false;bool s4=false;bool s5=false;bool s6=false;bool s7=false;bool s8=false;
textStyle() {
  TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700);
}

class Trainer extends StatefulWidget {
  Trainer({Key key}) : super(key: key);

  @override
  _TrainerState createState() => _TrainerState();
}

class _TrainerState extends State<Trainer> {
  var jsonResponse;

  @override
  void initState() {
    bool g2=false;bool g3=false;bool g4=false;bool g5=false;bool g56false;bool g7=false;bool g8=false;
bool s1=false;bool s2=false;bool s3=false;bool s4=false;bool s5=false;bool s6=false;bool s7=false;bool s8=false;
    // TODO: implement initState
    super.initState();
    getTrainers();
  }

  getTrainers() async {
    var response = await http.get(
        "http://test.letsdooit.in:3000/api/workplace/gettrainers",
        headers: {
          // "Content-type": "application/x-www-form-urlencoded",
          "token": global.token,
          // "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZSI6Ijc3Mzg2OTU5MjgiLCJpYXQiOjE1NzQ2MDcwNTAsImV4cCI6MTE2NTQ2MDcwNTB9.-eHmrhKWK4dBMESMLOD79QRQGx7J75MneKnkcnmQ6bA",
        });
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse['success'] == true) {
        setState(() {
          // global.completedSlots = jsonResponse['completedsession'];
          global.trainers = jsonResponse['trainers'];
          print(global.trainers);
          print(global.trainers.length);
          // getAccountDetails();
        });
      }
    } else {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    var gold;
    return ListView(children: <Widget>[
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
                  onTap: () {},
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
                  onTap: () {},
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
                  onTap: () {},
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
                  onTap: () {},
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
                  onTap: () {},
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black,
          ),
          
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.07,
          //   width: MediaQuery.of(context).size.width * 0.90,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: <Widget>[
          //       Text('6:00 AM', style: textStyle()),
          //       // IconButton(
          //       //   iconSize: 15.0,
          //       //   icon: Icon(Icons.phone_in_talk),
          //       //   onPressed: () {},
          //       // ),
          //       Checkbox(
          //         value: golVal1,
          //         onChanged: (bool value) {
          //           setState(() {
          //             golVal1 = value;
          //           });
          //         },
          //       ),
          //       Checkbox(
          //         value: silVal1,
          //         onChanged: (bool value) {
          //           setState(() {
          //             silVal1 = value;
          //           });
          //         },
          //       ),
          //       InkWell(
          //         child: Text(
          //           'Save',
          //           style: TextStyle(
          //               color: Colors.red,
          //               fontSize: 15.0,
          //               fontWeight: FontWeight.w500),
          //         ),
          //         onTap: () {},
          //       ),
          //     ],
          //   ),
          // ),
          // Divider(
          //   thickness: 0.2,
          //   color: Colors.black,
          // ),
          
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.07,
          //   width: MediaQuery.of(context).size.width * 0.90,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: <Widget>[
          //       Text('6:00 AM', style: textStyle()),
          //       // IconButton(
          //       //   iconSize: 15.0,
          //       //   icon: Icon(Icons.phone_in_talk),
          //       //   onPressed: () {},
          //       // ),
          //       Checkbox(
          //         value: golVal1,
          //         onChanged: (bool value) {
          //           setState(() {
          //             golVal1 = value;
          //           });
          //         },
          //       ),
          //       Checkbox(
          //         value: silVal1,
          //         onChanged: (bool value) {
          //           setState(() {
          //             silVal1 = value;
          //           });
          //         },
          //       ),
          //       InkWell(
          //         child: Text(
          //           'Save',
          //           style: TextStyle(
          //               color: Colors.red,
          //               fontSize: 15.0,
          //               fontWeight: FontWeight.w500),
          //         ),
          //         onTap: () {},
          //       ),
          //     ],
          //   ),
          // ),
          // Divider(
          //   thickness: 0.2,
          //   color: Colors.black,
          // ),
          
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.07,
          //   width: MediaQuery.of(context).size.width * 0.90,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: <Widget>[
          //       Text('6:00 AM', style: textStyle()),
          //       // IconButton(
          //       //   iconSize: 15.0,
          //       //   icon: Icon(Icons.phone_in_talk),
          //       //   onPressed: () {},
          //       // ),
          //       Checkbox(
          //         value: golVal1,
          //         onChanged: (bool value) {
          //           setState(() {
          //             golVal1 = value;
          //           });
          //         },
          //       ),
          //       Checkbox(
          //         value: silVal1,
          //         onChanged: (bool value) {
          //           setState(() {
          //             silVal1 = value;
          //           });
          //         },
          //       ),
          //       InkWell(
          //         child: Text(
          //           'Save',
          //           style: TextStyle(
          //               color: Colors.red,
          //               fontSize: 15.0,
          //               fontWeight: FontWeight.w500),
          //         ),
          //         onTap: () {},
          //       ),
          //     ],
          //   ),
          // ),
          // Divider(
          //   thickness: 0.2,
          //   color: Colors.black,
          // ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.07,
          //   width: MediaQuery.of(context).size.width * 0.90,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: <Widget>[
          //       Text('6:00 AM', style: textStyle()),
          //       // IconButton(
          //       //   iconSize: 15.0,
          //       //   icon: Icon(Icons.phone_in_talk),
          //       //   onPressed: () {},
          //       // ),
          //       Checkbox(
          //         value: golVal1,
          //         onChanged: (bool value) {
          //           setState(() {
          //             golVal1 = value;
          //           });
          //         },
          //       ),
          //       Checkbox(
          //         value: silVal1,
          //         onChanged: (bool value) {
          //  
          
         
        ],
      )
    ]);
  }

}

