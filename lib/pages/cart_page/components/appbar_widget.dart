import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'SHOPPING CART',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
