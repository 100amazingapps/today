import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleWoocommerceList extends StatelessWidget {
  const ExampleWoocommerceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example Woocommerce list')),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            WoocommerceListItem(
              image: Text('image'),
              name: Text('name'),
              price: Text('price'),
              badge: Text('badge'),
              description: Text('description'),
              button: Text('button'),
              color: Colors.white,
            ),
            SizedBox(height: 50),
            WoocommerceListItem(
              image: Text('image'),
              name: Text('name'),
              price: Text('price'),
              badge: Text('badge'),
              description: Text('description'),
              button: Text('button'),
              color: Colors.white,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
