// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/views/home_view.dart';
import 'package:runway/widgets/animation_line.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {


@override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds:1600),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeView();
      })
        );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/logo/logo.svg',width: 188,),
            Gap(10),
            AnimationLine()
          ],
        ),
      ),
    );
  }
}