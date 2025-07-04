import 'package:flutter/material.dart';
import 'package:runway/widgets/customAppbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Customappbar(
          prefixIcon: 'assets/svgs/menu.svg', 
          suffixIcon: 'assets/svgs/notification.svg', 
          text: 'Runway')
      ),
    );
  }
}