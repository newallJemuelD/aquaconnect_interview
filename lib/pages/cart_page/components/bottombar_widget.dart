import 'package:flutter/material.dart';

class BottombarWidget extends StatelessWidget {
  const BottombarWidget({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: screenHeight / 8,
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
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                '₹ 12,706.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '15 Items',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'PLACE REQUEST',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
