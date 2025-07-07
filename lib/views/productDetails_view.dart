import 'package:flutter/material.dart';
import 'package:runway/models/ProductModel.dart';
import 'package:runway/widgets/buttonSheet.dart';
import 'package:runway/widgets/customAppbar.dart';
import 'package:runway/widgets/product_filter.dart';

class ProductdetailsView extends StatefulWidget {
  const ProductdetailsView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductdetailsView> createState() => _ProductdetailsViewState();
}


class _ProductdetailsViewState extends State<ProductdetailsView> {


   @override
void initState() {
  super.initState();

  WidgetsBinding.instance.addPostFrameCallback((_) {
    showModalBottomSheet(
  context: context,
  isScrollControlled: true,
  barrierColor: Colors.transparent,
  builder: (context) {
    return DraggableScrollableSheet(   // لسحب الشيت لفوق
      initialChildSize: 0.2,
      minChildSize: 0.2,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return GestureDetector(
          onTap: () {}, // يمنع غلق الشيت لما تدوس عليه
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child:
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    children: [
                       Buttonsheet(productModel: widget.productModel)
                    ],
                      
                  )
                  ),
                
              
            ),
        );
      },
    );
  },
);

  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Customappbar(
          prefixIcon: 'assets/svgs/arrow-left.svg',
          suffixIcon: 'assets/svgs/cart.svg',
          text: 'Men',
        ),
      ),
      body: Column(
        children: [
          ProductFilter(),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            alignment: Alignment.center,
            child: Image.asset(widget.productModel.image),
          ),
        ],
      ),
    );
  }
}
