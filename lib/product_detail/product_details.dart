import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
          
                    const SizedBox(width: 12.0),
                    Container(
                    )
                    ]
                )
              ]
            )
          )
        ]
      )
      
    );
      
  }
}