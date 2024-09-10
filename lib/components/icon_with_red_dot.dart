import 'package:flutter/material.dart';
import 'package:one_app/components/notify_red_dot.dart';

/// A widget with red dot positioned at its upper right.
///
/// [icon] is required, it is the icon to display.
///
/// [padding] is optional, if it is null, the padding size is zero.
///
/// [color] is optional, if it is null, will be using default theme color.
class IconWithRedDot extends StatelessWidget {
  const IconWithRedDot({
    super.key,
    required this.icon,
    this.size,
    this.padding,
    this.color,
  });

  /// The icon to display. The available icons are described in [Icons].
  ///
  /// The icon can be null, in which case the widget will render as an empty
  /// space of the specified [size].
  final IconData? icon;

  /// The size of the icon in logical pixels.
  final double? size;

  /// The padding size around the icon.
  final EdgeInsetsGeometry? padding;

  /// The color to use when drawing the icon.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Icon(icon, size: size, color: color),
        ),
        const Positioned(
          right: 0,
          top: 0,
          child: NotifyRedDot(),
        ),
      ],
    );
  }
}
