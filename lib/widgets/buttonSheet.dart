import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/ProductModel.dart';
import 'package:runway/widgets/aboutProductContainer.dart';
import 'package:runway/widgets/addToBageBotton.dart';
import 'package:runway/widgets/selectColorandSize.dart';


class Buttonsheet extends StatelessWidget {
  const Buttonsheet({super.key, required this.productModel});
  final ProductModel productModel ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 20) ,
      child: SingleChildScrollView(
        controller: ScrollController(),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width:45,
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Gap(25),
            Text(
              productModel.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(25),
            Row(
              children: [
                Text(productModel.price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Spacer(),
                Icon(Icons.favorite, color: Colors.red,size: 30,),
                Gap(10),
                Text('450',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Gap(20),
            selectColorandSize(),
            Gap(10),
            Addtobagebotton(),
            Gap(15),
            Container(
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
                 SvgPicture.asset('assets/svgs/solar_delivery-linear.svg'),
                 Gap(15),
                 Text("Free Delivery",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                 ),)
                ],
              ),
            ),
             Container(
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
                 SvgPicture.asset('assets/svgs/hugeicons_truck-return.svg'),
                 Gap(15),
                 Text("Free Return",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                 ),),
                 Spacer(),
                 Text('View Return Policy',
                 style: TextStyle(
                  color: Colors.grey
                 ),
                 )
                ],
              ),

            ),
            Gap(20),
            Text("About Product",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
            Gap(20),
            Aboutproductcontainer(text: 'Product Details', prefixImage: 'assets/svgs/fluent_apps-list-detail-20-regular.svg', suffixImage: 'assets/svgs/chevron-down (1).svg'),
            Aboutproductcontainer(text: 'Brand', prefixImage: 'assets/svgs/solar_hanger-2-linear.svg', suffixImage: 'assets/svgs/chevron-down.svg'),
            Aboutproductcontainer(text: 'Sized and Fit', prefixImage: 'assets/svgs/hugeicons_tape-measure.svg', suffixImage: 'assets/svgs/chevron-down.svg'),
            Aboutproductcontainer(text: 'History', prefixImage: 'assets/svgs/solar_history-outline.svg', suffixImage: 'assets/svgs/chevron-down (1).svg')

          ],
        ),
      ),
    );
  }
}