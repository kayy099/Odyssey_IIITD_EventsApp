import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone11prox19Tg (4:3)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 64*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff28a00),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupvyqf35C (3EfPP7jEPN4281DpTiVYQF)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
              padding: EdgeInsets.fromLTRB(0*fem, 29*fem, 0*fem, 55*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff090808),
              ),
              child: Center(
                // image1URQ (4:26)
                child: SizedBox(
                  width: 360*fem,
                  height: 92*fem,
                  child: Image.asset(
                    'assets/loadingpage/images/image-1-Kbp.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              // autogroupefusxLa (3EfPWSrMMkC6LLQXhbefUs)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
              width: double.infinity,
              height: 61*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupccjh25Y (3EfPcCBmwQeCGpdYQ9CCjh)
                    width: 286*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff1f1f1f),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Register Now!',
                        style: SafeGoogleFont (
                          'Single Day',
                          fontSize: 40*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.25*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // polygon1ZUn (4:8)
                    width: 74*fem,
                    height: 61*fem,
                    child: Image.asset(
                      'assets/loadingpage/images/polygon-1.png',
                      width: 74*fem,
                      height: 61*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // image4eWE (5:9)
              width: 360*fem,
              height: 439*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25*fem),
                child: Image.asset(
                  'assets/loadingpage/images/image-4.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}