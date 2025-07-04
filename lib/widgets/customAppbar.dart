import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.prefixIcon, required this.suffixIcon, required this.text});
  final String prefixIcon ;
  final String suffixIcon ;
  final String text;



  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           SvgPicture.asset(
            prefixIcon,
           ),
            Text(text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
           SvgPicture.asset(suffixIcon)
          ],
        );
  }
}