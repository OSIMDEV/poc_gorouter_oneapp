import 'package:flutter/material.dart';

/// And Icon widget with circle background.
class IconWithBackground extends StatelessWidget {
  const IconWithBackground({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    this.iconSize,
    this.backgroundSize,
    this.useIconSize = false,
  });

  /// Icon.
  final IconData icon;

  /// Color of the icon.
  final Color? iconColor;

  /// The size of icon.
  final double? iconSize;

  /// Icon's background color.
  final Color? backgroundColor;

  /// The size of the circle background.
  final double? backgroundSize;

  final bool useIconSize;

  @override
  Widget build(BuildContext context) {
    final size = iconSize ?? 24;
    final bgSize = backgroundSize ?? size + 16;

    return Container(
      width: bgSize,
      height: useIconSize ? size : bgSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
