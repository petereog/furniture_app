import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              children: [
                Row(
                  children: [
                    Container( 
                      height:46 ,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Icon(Icons.arrow_back_ios_sharp,
                    ),
                    ),
                    const Spacer(),
                    const Text('Product Details', style: TextStyle(fontWeight: .bold, fontSize: 22,),),
                    const Spacer(),
                      Container( 
                      height:46 ,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Icon(Icons.favorite_border_outlined,
                    ),
                    ),
                    ]
                ),
                Image.asset('assets/images/image 4 (1).png',
                ),
                SizedBox(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white

                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)
                          ),
                          child: Image.asset('assets/images/Mask group (1).png',
                          width: 50,
                          height: 60,
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)
                          ),
                          child: Image.asset('assets/images/Mask group (2).png',
                          width: 50,
                          height: 60,
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)
                          ),
                          child: Image.asset('assets/images/Mask group (3).png',
                          width: 50,
                          height: 60,
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)
                          ),
                          child: Image.asset('assets/images/Mask group (4).png',
                          width: 50,
                          height: 60,
                          ),
                        ),
                        const SizedBox(width: 12,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)
                          ),
                          child: Image.asset('assets/images/Mask group (1).png',
                          width: 50,
                          height: 60,
                          ),
                        ),
                        const SizedBox(width: 12,),


                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)
                          ),
                          child: Image.asset('assets/images/Mask group copy.png',
                          width: 50,
                          height: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                const SizedBox(height: 10,),
                // details card //
                Container(
                  height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                  Row(
                    children: [
                      Text(
                        'Sofa chair'
                      ),
                      const Spacer(),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber,),
                            Text(
                        '4.5'
                      )
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10,),
                Text('Product Detail', style: TextStyle(fontWeight: .bold, fontSize: 24,),)

                ],
                
                ),

                
              ),
              
                ),
                // details card //

              ]
            )
          )
        ]
      )
    );
  }
}