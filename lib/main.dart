import 'package:flutter/material.dart';

import 'pages/register_page/register_page.dart';

void main() {
  runApp(const AquaConnectApp());
}

class AquaConnectApp extends StatelessWidget {
  const AquaConnectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterPage(),
    );
  }
}
