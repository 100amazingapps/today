import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleOfferBox extends StatelessWidget {
  const ExampleOfferBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Offer box'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            OfferBox(
              image: Text('image'),
              title: Text('title'),
              rating: Text('rating'),
              price: Text('price'),
              buttonCoupon: Text('button'),
              description: Text('description'),
              disclaimer: Text('disclaimer'),
              borderColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
