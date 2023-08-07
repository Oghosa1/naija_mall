import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:naija_mall/controllers/main_screen_provider.dart';
import 'package:naija_mall/screens/cart_page.dart';
import 'package:naija_mall/screens/home_page.dart';
import 'package:naija_mall/screens/profile.dart';
import 'package:naija_mall/screens/search_page.dart';
import 'package:provider/provider.dart';
import '../widgets/botom_nav_bar.dart';
import '../widgets/bottom_nav.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // int pageIndex = 4;
    return Consumer<MainScreenNotifier>(
      builder: (context, ref, child) {
        return Scaffold(
          // backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[ref.pageIndex],
          bottomNavigationBar: const BottomNav(),
        );
      },
    );
  }
}
