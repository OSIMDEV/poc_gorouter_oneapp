import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:one_app/components/icon_with_red_dot.dart';
import 'package:one_app/utils/color_utils.dart';

/// A custom button navigation bar.
class NavBar extends StatelessWidget {
  /// The current selected index.
  final int currentIndex;

  /// A callback when the user click on the new tab.
  final Function(int) onTap;

  /// A list of items to display in this navigation bar.
  final List<NavBarItem> items;

  const NavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  Widget _buildInactiveItem(int index) {
    return IconButton(
      key: items[index].key,
      onPressed: () => onTap(index),
      icon: (items[index].withRedDot)
          ? IconWithRedDot(
              icon: items[index].icon,
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.only(right: 4),
            )
          : Icon(
              items[index].icon,
              color: Colors.black.withOpacity(0.5),
            ),
    );
  }

  static const height = 56.0;
  static const iconYOffset = 36.0;

  Widget _buildSelectedItem(int index) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Transform.translate(
          offset: const Offset(0, -iconYOffset),
          child: Container(
            key: items[index].key,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFFF37021).withOpacity(0.7).solid,
                  const Color(0xFFF37021).withOpacity(0.85).solid,
                  const Color(0xFFF37021),
                ],
              ),
            ),
            alignment: Alignment.center,
            child: Icon(
              items[index].iconSelected,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 36,
          alignment: Alignment.center,
          child: Text(
            items[index].label,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFFF37021),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildItems() {
    final buttons = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      buttons.add(
        Expanded(
          child: (i == currentIndex)
              ? _buildSelectedItem(i)
              : _buildInactiveItem(i),
        ),
      );
    }

    return buttons;
  }

  Widget _buildBackground(BuildContext context) {
    return CustomPaint(
      painter: _NavBarBackgroundPainter(
        (0.5 + currentIndex) / items.length,
        Colors.white,
        const Color(0xFFCCCCCC).withOpacity(0.25),
      ),
      child: SizedBox(
        height: height + MediaQuery.of(context).padding.bottom,
        width: double.maxFinite,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        _buildBackground(context),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _buildItems(),
        ),
      ],
    );
  }
}

/// A navigation bar item
class NavBarItem {
  /// An icon in unselected state.
  final IconData icon;

  /// An icon when this item is selected.
  final IconData iconSelected;

  /// A text label of this item.
  final String label;

  /// Whether this item has a red dot.
  final bool withRedDot;

  final Key? key;

  NavBarItem({
    required this.icon,
    required this.iconSelected,
    required this.label,
    this.withRedDot = false,
    this.key,
  });
}

class _NavBarBackgroundPainter extends CustomPainter {
  _NavBarBackgroundPainter(this.cutPosition, this.color, this.shadowColor);

  final double cutPosition; // 0-1 fraction
  final Color color;
  final Color shadowColor;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    final cw = w * cutPosition;
    const iconRadius = 32.0;
    const iconOffset = 8.0;
    const cornerRadius = 16.0;
    const cornerRound = Radius.circular(cornerRadius);
    const sx = cornerRadius / 2;
    const sy = cornerRadius / 3.5;
    final rx =
        math.sqrt(math.pow(iconRadius, 2) - math.pow(iconOffset + sy, 2));
    path.moveTo(0, 0);
    path.lineTo(cw - rx - sx, 0);
    path.arcToPoint(Offset(cw - rx, sy), radius: cornerRound);
    path.arcToPoint(
      Offset(cw + rx, sy),
      radius: const Radius.circular(iconRadius),
      clockwise: false,
    );
    path.arcToPoint(Offset(cw + rx + sx, 0), radius: cornerRound);

    path.lineTo(w, 0);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.lineTo(0, 0);
    path.close();

    final shadowPath = path.shift(const Offset(0, -6));
    canvas.drawShadow(shadowPath, shadowColor, 6.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _NavBarBackgroundPainter oldDelegate) {
    return cutPosition != oldDelegate.cutPosition;
  }
}
