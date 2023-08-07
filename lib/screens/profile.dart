import 'package:flutter/material.dart';

import '../utils/app_font_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Profile",
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
