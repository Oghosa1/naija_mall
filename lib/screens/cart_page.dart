import 'package:flutter/material.dart';

import '../utils/app_font_style.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Cart",
          style: appFontStyle(
            40,
            Colors.black,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}