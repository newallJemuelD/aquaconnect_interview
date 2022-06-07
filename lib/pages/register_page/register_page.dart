import 'package:flutter/material.dart';

import 'components/get_otp_button.dart';
import 'components/logo_widget.dart';
import 'components/mobile_info_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            //enter mobile number section
            const Flexible(
              flex: 5,
              child: MobileInfoWidget(),
            ),
            //get otp button
            Flexible(
              flex: 1,
              child: GetOtpButton(screenWidth: screenWidth),
            ),
          ],
        ),
      ),
    );
  }
}
