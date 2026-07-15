import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  static const List<_CategoryItem> _categories = [
    _CategoryItem(icon: Icons.chair, label: 'Chairs'),
    _CategoryItem(icon: Icons.bed, label: 'Beds'),
    _CategoryItem(icon: Icons.table_bar, label: 'Tables'),
    _CategoryItem(icon: Icons.lightbulb, label: 'Lamp'),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: _categories
          .map((category) => _buildCategoryCircle(category))
          .toList(),
    );
  }

  Widget _buildCategoryCircle(_CategoryItem item) {
    return Column(
      mainAxisAlignment: .spaceBetween,

      children: [
        Container(
          width: 64,
          height: 64.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(item.icon, size: 24, color: Colors.black),
        ),
        const SizedBox(height: 8.0),
        Text(item.label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}

class _CategoryItem {
  final IconData icon;
  final String label;

  const _CategoryItem({required this.icon, required this.label});
}