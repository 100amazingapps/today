import 'package:flutter/material.dart';
import 'product_category_item.dart';

class ProductCategoryHorizontalOverItem extends StatelessWidget {
  /// Widget image
  final Widget? image;

  /// Widget name. It must required
  final Widget? name;

  /// Widget count items
  final Widget? count;

  /// Height image
  final double heightImage;

  /// Width image
  final double widthImage;

  /// Position image
  final bool enableEndImage;

  /// Function click item
  final GestureTapCallback? onClick;

  /// ShapeBorder of item post
  final ShapeBorder? shape;

  /// Elevation fro shadow card
  final double? elevation;

  /// Color shadow card
  final Color? shadowColor;

  /// Color Card of item category
  final Color? color;

  const ProductCategoryHorizontalOverItem({
    Key? key,
    this.image,
    this.name,
    this.count,
    this.heightImage = 92,
    this.widthImage = 120,
    this.enableEndImage = false,
    this.onClick,
    this.shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    this.elevation,
    this.shadowColor,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onClick,
      child: Stack(
        children: [
          Container(
            height: heightImage - 10,
            margin: const EdgeInsets.only(bottom: 10),
            child: _ContentItem(
              name: name,
              count: count,
              widthImage: image != null ? widthImage : null,
              enableEndImage: enableEndImage,
              shape: shape,
              elevation: elevation,
              shadowColor: shadowColor,
              color: color,
            ),
          ),
          if (image != null)
            PositionedDirectional(
              start: enableEndImage ? null : 0,
              end: enableEndImage ? 0 : null,
              top: 0,
              child: image!,
            ),
        ],
      ),
    );
  }
}

class _ContentItem extends ProductCategoryItem {
  /// Widget name. It must required
  final Widget? name;

  /// Widget count items
  final Widget? count;

  /// Width image
  final double? widthImage;

  /// Position image
  final bool enableEndImage;

  /// ShapeBorder of item post
  final ShapeBorder? shape;

  /// Elevation fro shadow card
  final double? elevation;

  /// Color shadow card
  final Color? shadowColor;

  /// Color Card of item category
  final Color? color;

  const _ContentItem({
    Key? key,
    this.name,
    this.count,
    this.widthImage,
    this.enableEndImage = false,
    this.shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    this.elevation,
    this.shadowColor,
    this.color,
  }) : super(
          key: key,
          shapeProductCategory: shape,
          elevationProductCategory: elevation,
          shadowColorProductCategory: shadowColor,
          colorProductCategory: color,
        );
  @override
  Widget buildLayout(BuildContext context) {
    return Row(
      children: [
        if (widthImage != null && !enableEndImage) SizedBox(width: widthImage),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: enableEndImage ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                name ?? Container(),
                if (name != null && count != null) const SizedBox(height: 4),
                count ?? Container(),
              ],
            ),
          ),
        ),
        if (widthImage != null && enableEndImage) SizedBox(width: widthImage),
      ],
    );
  }
}
