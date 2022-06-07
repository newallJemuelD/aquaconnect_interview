import 'package:flutter/material.dart';

import 'components/appbar_widget.dart';
import 'components/bottombar_widget.dart';
import 'components/products_in_cart_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Flex(
          direction: Axis.vertical,
          children: [
            //appbar section
            const AppbarWidget(),
            //listview section
            const ProductsInCartWidget(),
            //bottom bar section
            BottombarWidget(screenHeight: screenHeight),
          ],
        ),
      ),
    );
  }
}
