import 'package:flutter/material.dart';
import 'package:furniture_app/home/view/widget/flash_sales_widget.dart';
import 'package:furniture_app/home/view/widget/location_widget.dart';
import 'package:furniture_app/home/view/widget/searchbar_widget.dart';
import 'package:furniture_app/home/view/widget/banner.dart';
import 'package:furniture_app/home/view/widget/categories_widget.dart';
import 'package:furniture_app/navigation/bottom_navigation.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              children: [
                Row(
                  children: [
                    const Expanded(child: LocationWidget()),
                    const SizedBox(width: 12.0),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.notifications_active_outlined),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Expanded(child: SearchbarWidget()),
                    const SizedBox(width: 8.0),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        color: Color(0xFF3C5A5D),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                const BannerWidget(),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See All'),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const CategoriesWidget(),
                const SizedBox(height: 24.0),
                const FlashSalesWidget(),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 185,
                      width: 155,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/image 2.png',
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 4,
                                  right: 4,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      size: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Modern Chair',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            '\$185',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 185,
                      width: 155,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/image 3.png',
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 4,
                                  right: 4,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      size: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Modern Chair',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            '\$185',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100.0),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Center(
              child: BottomNavigation(),
            ),
          ),
        ],
      ),
    );
  }
}