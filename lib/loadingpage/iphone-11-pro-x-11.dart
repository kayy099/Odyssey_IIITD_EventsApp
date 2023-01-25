import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:maps_launcher/maps_launcher.dart';

class updateText11 extends StatefulWidget {
  Scene11 createState() => Scene11();
}
class Scene11 extends State {
  DatabaseReference ref = FirebaseDatabase.instance.ref("Events/Other Attractions");
  String s1 = "";
  String s2 = "";
  String s3="";
  Scene11() {
    ref.child("Face Paint/description").once().then((DatabaseEvent event) {
      setState(() {
        s1 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Woof n Wag/description").once().then((DatabaseEvent event) {
      setState(() {
        s2 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Content Hackathon/description").once().then((DatabaseEvent event) {
      setState(() {
        s3 = event.snapshot.value.toString().split(r"\n").join("\n");
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
                  color: Color(0xfffa4b9f),
                ),
                child: Text(
                  'Other Attractions',
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
                                        .child("Face Paint/location")
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
                                    "Face Paint",
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
                                        .child("Woof n Wag/location")
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
                                    'Woof n Wag',
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
                                        .child("Content Hackathon/location")
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
                                    'Content Hackathon',
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
