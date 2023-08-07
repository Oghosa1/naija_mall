import 'package:flutter/material.dart';

import '../utils/app_font_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Search",
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
