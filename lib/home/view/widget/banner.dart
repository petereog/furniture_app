import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xFFEEEEEE),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'New Collection',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Discover 50% off on our new arrivals',
                  style: TextStyle(
                    color: Color.fromARGB(179, 0, 0, 0),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 12.0),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFF3C5A5D),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12.0),
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Image.asset(
              'assets/images/image 1.png',
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}