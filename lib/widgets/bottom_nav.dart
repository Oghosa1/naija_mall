import 'package:flutter/material.dart';

class BottomNavIcons extends StatelessWidget {
  const BottomNavIcons({
    super.key,
    required this.color,
    required this.icon, this.ontap,
  });

  final Color color;
  final IconData icon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
