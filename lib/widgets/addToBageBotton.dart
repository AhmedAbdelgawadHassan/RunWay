import 'package:flutter/material.dart';

class Addtobagebotton extends StatelessWidget {
  const Addtobagebotton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){},
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      minWidth: double.infinity,
      height: 50,
      child: Text(
        'Add to Bag',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}