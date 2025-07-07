// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:runway/models/ProductModel.dart';
import 'package:runway/views/productDetails_view.dart';
import 'package:runway/widgets/customAppbar.dart';
import 'package:runway/widgets/productItem.dart';
import 'package:runway/widgets/product_filter.dart';

class CategoriesView extends StatelessWidget {
  CategoriesView({super.key});
  List<ProductModel> products = [
    ProductModel(
      name: "Top Man Black",
      price: "20€",
      image: "assets/images/models/model1.png",
    ),
    ProductModel(
      name: "Top man black with Trous..",
      price: "50€",
      image: "assets/images/models/model2.png",
    ),
    ProductModel(
      name: "Deep gray essential regul..",
      price: "26€",
      image: "assets/images/models/model3.png",
    ),
    ProductModel(
      name: "Gray coat and white T-sh..",
      price: "100€",
      image: "assets/images/models/model4.png",
    ),
    ProductModel(
      name: "Top Man Black",
      price: "20€",
      image: "assets/images/models/model1.png",
    ),
    ProductModel(
      name: "Top man black with Trous..",
      price: "50€",
      image: "assets/images/models/model2.png",
    ),
    ProductModel(
      name: "Deep gray essential regul..",
      price: "26€",
      image: "assets/images/models/model3.png",
    ),
    ProductModel(
      name: "Gray coat and white T-sh..",
      price: "100€",
      image: "assets/images/models/model4.png",
    ),
    ProductModel(
      name: "Top Man Black",
      price: "20€",
      image: "assets/images/models/model1.png",
    ),
    ProductModel(
      name: "Top man black with Trous..",
      price: "50€",
      image: "assets/images/models/model2.png",
    ),
    ProductModel(
      name: "Deep gray essential regul..",
      price: "26€",
      image: "assets/images/models/model3.png",
    ),
    ProductModel(
      name: "Gray coat and white T-sh..",
      price: "100€",
      image: "assets/images/models/model4.png",
    ),
  ];

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
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  childAspectRatio: 0.58,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Productitem(
                    product: products[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductdetailsView(
                            productModel: products[index],
                        ),
                      ));
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
