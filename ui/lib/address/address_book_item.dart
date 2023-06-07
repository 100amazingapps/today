import 'package:flutter/material.dart';

class AddressBookItem extends StatelessWidget {
  final Widget? icon;
  final Widget address;
  final Widget? action;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onClick;

  const AddressBookItem({
    super.key,
    this.icon,
    required this.address,
    this.action,
    this.padding,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = Container(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 16),
          ],
          Expanded(child: address),
          if (action != null) ...[const SizedBox(width: 12), action!]
        ],
      ),
    );
    if (onClick == null) {
      return child;
    }
    return InkWell(
      onTap: () => onClick!.call(),
      child: child,
    );
  }
}
