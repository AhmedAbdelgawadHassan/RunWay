import 'package:flutter/material.dart';
import 'package:runway/views/splash_view.dart';

void main()
{
  runApp(RunWay());
}

class RunWay extends StatelessWidget {
  const RunWay({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
       ),
      home: SplashView(),
    );
  }
}