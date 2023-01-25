import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:maps_launcher/maps_launcher.dart';

class updateText4 extends StatefulWidget {
  Scene4 createState() => Scene4();
}
class Scene4 extends State {
  DatabaseReference ref = FirebaseDatabase.instance.ref("Events/Dance");
  String s1 = "";
  String s2 = "";
  String s3 ="";
  String s4="";
  String s5="";
  Scene4() {
    ref.child("Verve/description").once().then((DatabaseEvent event) {
      setState(() {
        s1 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Can you Du-et?/description").once().then((DatabaseEvent event) {
      setState(() {
        s2 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Street Dance/description").once().then((DatabaseEvent event) {
      setState(() {
        s3 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Thematic Dance/description").once().then((DatabaseEvent event) {
      setState(() {
        s4 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Battle Troupe/description").once().then((DatabaseEvent event) {
      setState(() {
        s5 = event.snapshot.value.toString().split(r"\n").join("\n");
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
                margin:EdgeInsets.fromLTRB(width*0.02, height3 * 0.035, width*0.02, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfffa75c5),
                ),
                child: Text(
                  'Dance',
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
                                    .child("Verve/location")
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
                                'Verve',
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
                                    .child("Can you Du-et/location")
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
                                'Can you Du-et?',
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
                                        .child("Thematic Dance/location")
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
                                    'Thematic Dance',
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
                                    .child("Street Dance/location")
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
                                'Street Dance',
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
                                    .child("Battle Troupe/location")
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
                                'Battle Troupe',
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
                      )
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
