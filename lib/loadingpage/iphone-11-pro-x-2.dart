import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'iphone-11-pro-x-4.dart';
import 'iphone-11-pro-x-3.dart';
import 'iphone-11-pro-x-5.dart';
import 'iphone-11-pro-x-6.dart';
import 'iphone-11-pro-x-7.dart';
import 'iphone-11-pro-x-8.dart';
import 'iphone-11-pro-x-9.dart';
import 'iphone-11-pro-x-10.dart';
import 'iphone-11-pro-x-11.dart';
import 'iphone-11-pro-x-12.dart';


class Scene extends State {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    var padding = MediaQuery
        .of(context)
        .viewPadding;
    double height3 = height - padding.top - kToolbarHeight;

    return Container(
      width: double.infinity,
      height: height,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff090808),
        ),
        child: Column(
            children:[
        Container(
        margin: EdgeInsets.fromLTRB(0, height3 * 0.045, 0, 0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff090808),
        ),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/loadingpage/images/image-1-Xwx.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Expanded(
        child:Container(
          margin:EdgeInsets.fromLTRB(0, height3 * 0.035, 0, 0),
          child:
      ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xffc286f1)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText3()),
                  );
                },
                child: Text(
                  "Art",
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: width*0.1,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              // padding: EdgeInsets.fromLTRB(0*height3, 0*height3, 0*height3, 5*height3),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xfffa75c5)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText4()),
                  );
                },
                child: Text(
                  "Dance",
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: width*0.1,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              height: height3*0.087,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff27acf7)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText5()),
                  );
                },
                child: Text(
                  'Finance and Entrepreneurship',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: width*0.081,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              height: height3*0.087,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xfff8c50f)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText6()),
                  );
                },
                child: Text(
                  'Fun, Culinary and Photography',
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: width*0.079,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0.02 * height3, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xfff89c47)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText7()),
                  );
                },
                child: Text(
                  'Lifestyle',
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: height3 * 0.06,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xffa3ca34)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText12()),
                  );
                },
                child: Text(
                  'Literature',
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: height3 * 0.06,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff34caaf)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText9()),
                  );
                },
                child: Text(
                  'Music',
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: height3 * 0.06,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff9815ff)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText8()),
                  );
                },
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
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0.02 * height3, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xfffa554b)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText10()),
                  );
                },
                child: Text(
                  'Theatre',
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: height3 * 0.06,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, height3 * 0.02, 0, 0),
              padding: EdgeInsets.fromLTRB(width*0.02, 0, width*0.02, 0),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xfffa4b9f)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => updateText11()),
                  );
                },
                child: Text(
                  'Other Attractions',
                  style: SafeGoogleFont(
                    'Oswald',
                    fontSize: height3 * 0.06,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
      ],
    ),
    ),
    );
  }
}
