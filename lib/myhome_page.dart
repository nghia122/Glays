import 'package:flutter/material.dart';
import 'package:flutter_glays/Screens/welcome_page.dart';
import 'package:lottie/lottie.dart';
import './Screens/welcome_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
     Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
    super.initState();
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child: Lottie.asset("assets/animations/hub-computer.json")),
            const SizedBox(height: 20),
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/images/GLAYS-logo.png"))
          ],
        ),
      ),
    );
  }
}
