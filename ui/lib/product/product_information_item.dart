import 'package:flutter/material.dart';
import 'product_item.dart';

/// A post widget display full width on the screen
///
class ProductInformationItem extends ProductItem {
  /// Widget image
  final Widget image;

  /// Widget name. It must required
  final Widget name;

  /// Widget price
  final Widget price;

  /// Widget description
  final Widget? description;

  /// Widget quantity
  final Widget? quantity;

  /// shadow card
  final List<BoxShadow>? boxShadow;

  /// Border of item post
  final Border? border;

  /// Color Card of item post
  final Color? color;

  /// Border of item post
  final BorderRadius? borderRadius;

  /// Padding item
  final EdgeInsetsGeometry padding;

  /// Create Product Information Item
  const ProductInformationItem({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    this.description,
    this.quantity,
    this.borderRadius,
    this.border,
    this.color = Colors.transparent,
    this.boxShadow,
    this.padding = EdgeInsets.zero,
  }) : super(
          key: key,
          colorProduct: color,
          borderRadiusProduct: borderRadius,
          borderProduct: border,
          boxShadowProduct: boxShadow,
        );

  @override
  Widget buildLayout(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                name,
                const SizedBox(height: 8),
                if (description != null) ...[
                  description!,
                  const SizedBox(height: 4),
                ],
                Row(
                  children: [
                    Expanded(child: price),
                    if (quantity != null) ...[
                      const SizedBox(width: 16),
                      quantity!,
                    ]
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
