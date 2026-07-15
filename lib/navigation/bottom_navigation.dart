import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav_controller.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final NavController controller = Get.put(NavController());

  static const List<IconData> _icons = [
    Icons.home_outlined,
    Icons.search,
    Icons.favorite_border,
    Icons.person_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Obx(
        () => Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(_icons.length, (index) {
            final bool isSelected = controller.selectedIndex.value == index;
            return GestureDetector(
              onTap: () => controller.changeIndex(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 6.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white24 : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  _icons[index],
                  color: Colors.white,
                  size: 24,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}