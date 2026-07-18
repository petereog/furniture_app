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
                    Container( 
                      height:36 ,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 255, 255, 255),

                      ),
                      child: Icon(Icons.arrow_back_ios_sharp,
                    )
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