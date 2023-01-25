import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:maps_launcher/maps_launcher.dart';

class updateText6 extends StatefulWidget {
  Scene6 createState() => Scene6();
}
class Scene6 extends State {
  DatabaseReference ref = FirebaseDatabase.instance.ref("Events/Fun");
  String s1 = "";
  String s2 = "";
  String s3 ="";
  String s4="";
  String s5="";
  String s6="";
  String s7="";
  String s8="";
  String s9="";
  Scene6() {
    ref.child("Win it in a minute/description").once().then((DatabaseEvent event) {
      setState(() {
        s1 = event.snapshot.value.toString().split(r"\n").join("\n");
        print(event.snapshot.value.toString());
      });
    });
    ref.child("Raaz/description").once().then((DatabaseEvent event) {
      setState(() {
        s2 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Atrangi Shatranj/description").once().then((DatabaseEvent event) {
      setState(() {
        s3 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Shutter Story/description").once().then((DatabaseEvent event) {
      setState(() {
        s4 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Emoticon/description").once().then((DatabaseEvent event) {
      setState(() {
        s5 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Blind Date/description").once().then((DatabaseEvent event) {
      setState(() {
        s6 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Radiants' Fury/description").once().then((DatabaseEvent event) {
      setState(() {
        s7 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Dare2Eat/description").once().then((DatabaseEvent event) {
      setState(() {
        s8 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Foodie Duet in Feud/description").once().then((DatabaseEvent event) {
      setState(() {
        s9 = event.snapshot.value.toString().split(r"\n").join("\n");
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
                  color: Color(0xfff8c50f),
                ),
                child: Text(
                  'Fun, Culinary and Photography',
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
                  margin: EdgeInsets.fromLTRB(0, height3 * 0.035, 0, 0),
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
                                        .child("Win it in a minute/location")
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
                                    'Win it in a minute',
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
                                        .child("Raaz/location")
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
                                    'Raaz',
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
                                        .child("Atrangi Shatranj/location")
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
                                    'Atrangi Shatranj',
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
                                        .child("Shutter Story/location")
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
                                    'Shutter Story',
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
                                  s4,
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
                                        .child("Emoticon/location")
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
                                    'Emoticon',
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
                                        .child("Blind Date/location")
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
                                    'Blind Date',
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
                                        .child("Radiants' Fury/location")
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
                                    "Radiants' Fury",
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
                                  s7,
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
                                        .child("Dare2Eat/location")
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
                                    'Dare2Eat',
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
                                  s8,
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
                                        .child("Foodie Duet in Feud/location")
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
                                    'Foodie Duet in Feud',
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
                                  s9,
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
