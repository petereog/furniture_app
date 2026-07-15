import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class FlashSalesWidget extends StatelessWidget {
  const FlashSalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Flash Sales',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        const Text('Closing in'),
        const SizedBox(width: 5,),
         SlideCountdownSeparated(
          duration: const Duration(hours: 12, minutes: 20, seconds: 35),
          separatorType: SeparatorType.symbol,
          separatorStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          shouldShowDays: (duration) => false,
          onDone: () {
            // handle countdown finished, e.g. hide flash sale banner
          },
        ),
      ],
    );
  }
}