import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Image(
          image: AssetImage('assets/images/office.jpg'),
        ),
        Positioned(
          top: screenHeight / 9.5,
          left: screenWidth / 3,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 2.0,
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/fish_logo.jpeg'),
                )),
          ),
        ),
      ],
    );
  }
}
