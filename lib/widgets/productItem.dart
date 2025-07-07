// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:runway/models/ProductModel.dart';

class Productitem extends StatefulWidget {
  Productitem({super.key, required this.product, required this.onTap});
  final ProductModel product;
  final Function()? onTap;
  bool isFavorite = false; // Added isFavorite property

  @override
  State<Productitem> createState() => _ProductitemState();
}

class _ProductitemState extends State<Productitem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: 185,
            height: 265,
            decoration: BoxDecoration(
              color: Color(0xffE3E3E3),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Stack(
              children: [
                Image.asset(widget.product.image), // product image
                Positioned(
                  bottom: 0,
                  right: 10,
                  left: 10,
                  child: Image.asset('assets/images/shadow.png'),
                ), // shadow
              ],
            ),
          ),
          SizedBox(
            width: 185,
            child: Text(
              widget.product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.product.price,
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.isFavorite = !widget.isFavorite;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: widget.isFavorite ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
