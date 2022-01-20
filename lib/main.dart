import 'package:flutter/material.dart';
import 'package:flutter_glays/Screens/cart_page.dart';
import 'package:flutter_glays/Screens/HistoryOrder.dart';
import 'package:flutter_glays/Screens/HistoryOrderDetail.dart';
import 'package:flutter_glays/Screens/home/Home_Screen_page.dart';
import 'package:flutter_glays/Screens/home/components/body.dart';
import 'package:flutter_glays/Screens/productdetail_page.dart';
import 'package:flutter_glays/constants.dart';
import 'package:flutter_glays/myhome_page.dart';

import 'Screens/create-new-account.dart';
import 'Screens/forgot-password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GLAYS APP',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        //scaffoldBackgroundColor: Colors.red[200],
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            color: Colors.black87,
          ),
          headline2: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: Colors.grey,
          ),
          headline4: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: Colors.black,
          ),
          headline5: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: 15,
          ),
          caption: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.grey,
            fontSize: 13,
          ),
          button: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
      ),
      home: ForgotPassword(),
    );
  }
}
