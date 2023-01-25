import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:maps_launcher/maps_launcher.dart';

class updateText8 extends StatefulWidget {
  Scene8 createState() => Scene8();
}
class Scene8 extends State {
  DatabaseReference ref = FirebaseDatabase.instance.ref("Events/Quizzing");
  String s1 = "";
  String s2 = "";
  String s3 ="";
  String s4="";
  Scene8() {
    ref.child("General Tso's : A General Quiz/description").once().then((DatabaseEvent event) {
      setState(() {
        s1 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Meta Mera Data Leta/description").once().then((DatabaseEvent event) {
      setState(() {
        s2 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Netflix/description").once().then((DatabaseEvent event) {
      setState(() {
        s3 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Mehlancholy/description").once().then((DatabaseEvent event) {
      setState(() {
        s4 = event.snapshot.value.toString().split(r"\n").join("\n");
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
                  color: Color(0xff9815ff),
                ),
                child: Text(
                  'Quizzing',
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
                                        .child("Mehlancholy/location")
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
                                    "On MEHLAncholy Hill",
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
                                        .child("Meta Mera Data Leta/location")
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
                                    'Meta Mera Data Leta',
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
                                        .child("General Tso's : A General Quiz/location")
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
                                    "General Tso's : A General Quiz",
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
                                        .child("Netflix/location")
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
                                    "Netflix met 'DRS' : A SPENT Quiz",
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
