import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInfoWidget extends StatelessWidget {
  const OtpInfoWidget({
    Key? key,
    required this.defaultPinTheme,
  }) : super(key: key);

  final PinTheme defaultPinTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            'Verify Mobile Number',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              'Enter 6-digit code sent to your mobile number',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
              validator: (s) {
                return s == '222222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              // onCompleted: (pin) => print(pin),
            ),
          ),
        ],
      ),
    );
  }
}
