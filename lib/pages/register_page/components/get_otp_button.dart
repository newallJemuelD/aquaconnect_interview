import 'package:flutter/material.dart';

import '../../verify_page/verify_page.dart';

class GetOtpButton extends StatelessWidget {
  const GetOtpButton({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const VerifyPage()));
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
          'GET OTP',
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
