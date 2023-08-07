import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import '../controllers/main_screen_provider.dart';
import 'bottom_nav.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, MainScreenNotifier? ref, child) {
        if (ref == null) {
          // Handle the case when ref is null (optional)
          return SizedBox.shrink(); // Return an empty widget, or handle the case as needed
        }
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavIcons(
                    color: Colors.white,
                    icon: ref.pageIndex == 0
                        ? Ionicons.home
                        : Ionicons.home_outline,
                    ontap: () {
                      ref.pageIndex = 0;
                    },
                  ),
                  BottomNavIcons(
                    color: Colors.white,
                    icon: ref.pageIndex == 1
                        ? Ionicons.search
                        : Ionicons.search_outline,
                    ontap: () {
                      ref.pageIndex = 1;
                    },
                  ),
                  BottomNavIcons(
                    color: Colors.white,
                    icon: ref.pageIndex == 2
                        ? Ionicons.add_circle_outline
                        : Ionicons.add,
                    ontap: () {
                      ref.pageIndex = 2;
                    },
                  ),
                  BottomNavIcons(
                    color: Colors.white,
                    icon: ref.pageIndex == 3
                        ? Ionicons.cart
                        : Ionicons.cart_outline,
                    ontap: () {
                      ref.pageIndex = 3;
                    },
                  ),
                  BottomNavIcons(
                    color: Colors.white,
                    icon: ref.pageIndex == 4
                        ? Ionicons.person
                        : Ionicons.person_outline,
                    ontap: () {
                      ref.pageIndex = 4;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
