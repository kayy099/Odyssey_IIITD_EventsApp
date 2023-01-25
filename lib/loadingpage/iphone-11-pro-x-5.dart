import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:maps_launcher/maps_launcher.dart';

class updateText5 extends StatefulWidget {
  Scene5 createState() => Scene5();
}
class Scene5 extends State {
  DatabaseReference ref = FirebaseDatabase.instance.ref("Events/FinEnt");
  String s1 = "";
  String s2 = "";
  String s3 ="";
  String s4="";
  String s5="";
  String s6="";
  Scene5() {
    ref.child("Bid Buzz/description").once().then((DatabaseEvent event) {
      setState(() {
        s1 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Capitalist Date/description").once().then((DatabaseEvent event) {
      setState(() {
        s2 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Critical Bid/description").once().then((DatabaseEvent event) {
      setState(() {
        s3 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Mock Stock/description").once().then((DatabaseEvent event) {
      setState(() {
        s5 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Pirates of Stock Market/description").once().then((DatabaseEvent event) {
      setState(() {
        s6 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height3 = height - padding.top - kToolbarHeight;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff090808),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupcruhRFG (3EfQY5oeYJgs9wE8hBcRuH)
                margin: EdgeInsets.fromLTRB(0, height3 * 0.045, 0, 0),
                width: double.infinity,
                child:
                Stack(children:<Widget>[
                  Image.asset("assets/loadingpage/images/image-1-hLn.png"),

                  BackButton(
                    color:Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )
                ]
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    width * 0.02, height3 * 0.02, width * 0.02, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff27acf7),
                ),
                child: Text(
                  'Finance and Entrepreneurship',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: height3 * 0.06,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            width * 0.02, height3 * 0.02, width * 0.02, 0),
                        child: Column(children: [
                          SizedBox(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: BorderDirectional(
                                      bottom: BorderSide(width: 0.8)),
                                  color: Color(0xffd9d9d9),
                                ),
                                width: width,
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {
                                    ref
                                        .child("Pirates of Stock Market/location")
                                        .once()
                                        .then((DatabaseEvent event) {
                                      setState(() {
                                        String s3 = event.snapshot.value
                                            .toString()
                                            .split(r"\n")
                                            .join("\n");
                                        MapsLauncher.launchQuery(s3);
                                      });
                                    });
                                  },
                                  child: Text(
                                    'Pirates of Stock Market',
                                    style: SafeGoogleFont(
                                      'Oswald',
                                      fontSize: height3 * 0.04,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                              height: height3 * 0.1,
                              width: width,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0, height3 * 0.005, 0, 0),
                                decoration: const BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                ),
                                child: Text(
                                  s6,
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Oswald',
                                    fontSize: height3 * 0.028,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ))
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            width * 0.02, height3 * 0.02, width * 0.02, 0),
                        child: Column(children: [
                          SizedBox(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: BorderDirectional(
                                      bottom: BorderSide(width: 0.8)),
                                  color: Color(0xffd9d9d9),
                                ),
                                width: width,
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {
                                    ref
                                        .child("Capitalist Date/location")
                                        .once()
                                        .then((DatabaseEvent event) {
                                      setState(() {
                                        String s3 = event.snapshot.value
                                            .toString()
                                            .split(r"\n")
                                            .join("\n");
                                        MapsLauncher.launchQuery(s3);
                                      });
                                    });
                                  },
                                  child: Text(
                                    'Capitalist Date',
                                    style: SafeGoogleFont(
                                      'Oswald',
                                      fontSize: height3 * 0.04,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                              height: height3 * 0.1,
                              width: width,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0, height3 * 0.005, 0, 0),
                                decoration: const BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                ),
                                child: Text(
                                  s2,
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Oswald',
                                    fontSize: height3 * 0.028,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ))
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            width * 0.02, height3 * 0.02, width * 0.02, 0),
                        child: Column(children: [
                          SizedBox(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: BorderDirectional(
                                      bottom: BorderSide(width: 0.8)),
                                  color: Color(0xffd9d9d9),
                                ),
                                width: width,
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {
                                    ref
                                        .child("Mock Stock/location")
                                        .once()
                                        .then((DatabaseEvent event) {
                                      setState(() {
                                        String s3 = event.snapshot.value
                                            .toString()
                                            .split(r"\n")
                                            .join("\n");
                                        MapsLauncher.launchQuery(s3);
                                      });
                                    });
                                  },
                                  child: Text(
                                    'Mock Stock',
                                    style: SafeGoogleFont(
                                      'Oswald',
                                      fontSize: height3 * 0.04,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                              height: height3 * 0.1,
                              width: width,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0, height3 * 0.005, 0, 0),
                                decoration: const BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                ),
                                child: Text(
                                  s5,
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Oswald',
                                    fontSize: height3 * 0.028,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ))
                        ]),
                      ),


                      Container(
                        margin: EdgeInsets.fromLTRB(
                            width * 0.02, height3 * 0.02, width * 0.02, 0),
                        child: Column(children: [
                          SizedBox(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: BorderDirectional(
                                      bottom: BorderSide(width: 0.8)),
                                  color: Color(0xffd9d9d9),
                                ),
                                width: width,
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {
                                    ref
                                        .child("Critical Bid/location")
                                        .once()
                                        .then((DatabaseEvent event) {
                                      setState(() {
                                        String s3 = event.snapshot.value
                                            .toString()
                                            .split(r"\n")
                                            .join("\n");
                                        MapsLauncher.launchQuery(s3);
                                      });
                                    });
                                  },
                                  child: Text(
                                    'Critical Bid',
                                    style: SafeGoogleFont(
                                      'Oswald',
                                      fontSize: height3 * 0.04,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                              height: height3 * 0.1,
                              width: width,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0, height3 * 0.005, 0, 0),
                                decoration: const BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                ),
                                child: Text(
                                  s3,
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Oswald',
                                    fontSize: height3 * 0.028,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ))
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            width * 0.02, height3 * 0.02, width * 0.02, 0),
                        child: Column(children: [
                          SizedBox(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: BorderDirectional(
                                      bottom: BorderSide(width: 0.8)),
                                  color: Color(0xffd9d9d9),
                                ),
                                width: width,
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {
                                    ref
                                        .child("Bid Buzz/location")
                                        .once()
                                        .then((DatabaseEvent event) {
                                      setState(() {
                                        String s3 = event.snapshot.value
                                            .toString()
                                            .split(r"\n")
                                            .join("\n");
                                        MapsLauncher.launchQuery(s3);
                                      });
                                    });
                                  },
                                  child: Text(
                                    'Bid Buzz',
                                    style: SafeGoogleFont(
                                      'Oswald',
                                      fontSize: height3 * 0.04,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                              height: height3 * 0.1,
                              width: width,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0, height3 * 0.005, 0, 0),
                                decoration: const BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                ),
                                child: Text(
                                  s1,
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Oswald',
                                    fontSize: height3 * 0.028,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ))
                        ]),
                      ),



                    ],
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
