import 'package:flutter/material.dart';

class ProductCategoryTextCenterItem extends StatelessWidget {
  final Function onTap;
  final Widget name;
  final Widget? image;
  final Widget? count;
  final Widget? iconRight;
  final Widget? child;
  final double basePadding;

  const ProductCategoryTextCenterItem({
    Key? key,
    required this.onTap,
    required this.name,
    this.image,
    this.count,
    this.iconRight,
    this.child,
    this.basePadding = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints(minHeight: 58),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                  ),
                ),

                // margin: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (image != null)
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: basePadding),
                        child: GestureDetector(
                          onTap: () => onTap(),
                          child: image,
                        ),
                      ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: basePadding * 2),
                        child: GestureDetector(
                          onTap: () => onTap(),
                          child: name,
                        ),
                      ),
                    ),
                    if (count != null)
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: basePadding),
                        child: count,
                      ),
                    if (iconRight != null)
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: basePadding),
                        child: iconRight,
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
        child ?? Container(),
      ],
    );
  }
}
