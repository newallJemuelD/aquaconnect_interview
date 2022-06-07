import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'components/logo_widget.dart';
import 'components/otp_info_widget.dart';
import 'components/to_cart_page_widget.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 119, 119, 119)),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //logo and bg section
            Flexible(
              flex: 3,
              child: LogoWidget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
            ),
            //otp section
            Flexible(
              flex: 5,
              child: OtpInfoWidget(defaultPinTheme: defaultPinTheme),
            ),
            //to cart page
            Flexible(
              flex: 1,
              child: ToCartPageWidget(screenWidth: screenWidth),
            ),
          ],
        ),
      ),
    );
  }
}
