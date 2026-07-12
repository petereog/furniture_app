import 'package:flutter/material.dart';
import 'package:furniture_app/home/view/widget/location_widget.dart';
import 'package:furniture_app/home/view/widget/searchbar_widget.dart';
import 'package:furniture_app/home/view/widget/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  decoration: BoxDecoration(
                    color: Color(0xFF3C5A5D) ,
                    borderRadius: BorderRadius.circular(12.0),
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
           
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}