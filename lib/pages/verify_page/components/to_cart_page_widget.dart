import 'package:flutter/material.dart';

import '../../cart_page/cart_page.dart';

class ToCartPageWidget extends StatelessWidget {
  const ToCartPageWidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CartPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
            child: Text(
          'CONTINUE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )),
      ),
    );
  }
}
