import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProductFilter extends StatelessWidget {
  const ProductFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width: 1
              )
            ),
            child: Row(
              children: [
                Text("Sort by", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Gap(10),
                SvgPicture.asset('assets/svgs/select.svg'),
                Spacer(),
                SvgPicture.asset('assets/svgs/filter.svg'),
                Gap(10),
                Text("Filter", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                Gap(20),
                SvgPicture.asset('assets/svgs/grid.svg'),
                Gap(15),
                SvgPicture.asset('assets/svgs/groups.svg'),
              ],
            ),
          );
  }
}