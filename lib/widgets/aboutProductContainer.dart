import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Aboutproductcontainer extends StatelessWidget {
  const Aboutproductcontainer({super.key, required this.text, required this.prefixImage, required this.suffixImage});
  final String text;
  final String prefixImage;
  final String suffixImage;

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(3)
              ),
              child: Row(
                children: [     
                 SvgPicture.asset(prefixImage),
                 Gap(15),
                 Text(text,
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                 ),),
                 Spacer(),
                 SvgPicture.asset(suffixImage),
                 
                ],
              ),

            );
  }
}