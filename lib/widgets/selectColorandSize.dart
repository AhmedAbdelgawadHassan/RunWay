import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class selectColorandSize extends StatelessWidget {
  const selectColorandSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Row(
        children: [
             Text('Select Color',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ) ,
        Gap(10),
        SvgPicture.asset('assets/svgs/select.svg'),
        Spacer(),
        VerticalDivider(
          color: Colors.grey.shade300,
          thickness: 1,
          indent: 12,
          endIndent:12,
          ),
          Spacer(),
           Text('Select Size',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ) ,
        Gap(10),
        SvgPicture.asset('assets/svgs/select.svg'),
         
        
     ] ),
    );
  }
}