import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-1.dart';
import 'package:myapp/loadingpage/iphone-11-pro-x-2.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-3.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-7.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-6.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-4.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-8.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-10.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-9.dart';
// import 'package:myapp/loadingpage/iphone-11-pro-x-5.dart';

void main() async{
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp(
		options: DefaultFirebaseOptions.currentPlatform,
	);
	runApp(MyApp());}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: UpdateText(),
		),
		),
	);
	}
}
class UpdateText extends StatefulWidget {

	Scene createState() => Scene();

}
