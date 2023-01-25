import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:maps_launcher/maps_launcher.dart';

class updateText3 extends StatefulWidget {
  Scene3 createState() => Scene3();
}

class Scene3 extends State {
  DatabaseReference ref = FirebaseDatabase.instance.ref("Events/Art");
  String s1 = "";
  String s2 = "";

  Scene3() {
    ref.child("Only Ink/description").once().then((DatabaseEvent event) {
      setState(() {
        s1 = event.snapshot.value.toString().split(r"\n").join("\n");
      });
    });
    ref.child("Canvas Art/description").once().then((DatabaseEvent event) {
      setState(() {
        s2 = event.snapshot.value.toString().split(r"\n").join("\n");
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
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: double.infinity,
        decoration: const BoxDecoration(
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
              // group1B7x (12:80)
              // alignment: Alignment.center,
              margin:EdgeInsets.fromLTRB(width*0.02, height3 * 0.035, width*0.02, 0),
              width: double.infinity,
              height: height3 * 0.07,
              decoration: const BoxDecoration(
                color: Color(0xffc286f1),
              ),
              child: Text(
                'Art',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Single Day',
                  fontSize: height3 * 0.06,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
            ),

            Container(
                margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
                padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
                width: double.infinity,
                child: Column(children: [
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                        decoration: const BoxDecoration(
                          border:
                              BorderDirectional(bottom: BorderSide(width: 0.8)),
                          color: Color(0xffd9d9d9),
                        ),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {
                            ref
                                .child("Only Ink/location")
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
                            'Only Ink',
                            style: SafeGoogleFont(
                              'Single Day',
                              fontWeight: FontWeight.w400,
                              fontSize: height3 * 0.04,
                              color: const Color(0xff000000),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                      height: height3 * 0.1,
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, height3 * 0.005, 0, 0),
                        decoration: const BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Text(
                          s1,
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Single Day',
                            fontWeight: FontWeight.w400,
                            fontSize: height3 * 0.028,
                            color: const Color(0xff000000),
                          ),
                        ),
                      )),
                ])),
            Container(
                margin:EdgeInsets.fromLTRB(0, height3 * 0.035, 0, 0),
                padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
                width: double.infinity,
                child: Column(children: [
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffd9d9d9),
                          border:
                              BorderDirectional(bottom: BorderSide(width: 0.8)),
                        ),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {
                            ref
                                .child("Canvas Art/location")
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
                            'Canvas Art',
                            style: SafeGoogleFont(
                              'Single Day',
                              fontWeight: FontWeight.w400,
                              fontSize: height3 * 0.04,
                              color: const Color(0xff000000),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                      height: height3 * 0.1,
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, height3 * 0.005, 0, 0),
                        decoration: const BoxDecoration(
                          color: Color(0xffd9d9d9),
                        ),
                        child: Text(
                          s2,
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Single Day',
                            fontWeight: FontWeight.w400,
                            fontSize: height3 * 0.028,
                            color: const Color(0xff000000),
                          ),
                        ),
                      )),
                ])),
          ],
        ),
      ),
    );
  }
}
