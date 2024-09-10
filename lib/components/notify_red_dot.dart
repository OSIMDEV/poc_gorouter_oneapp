import 'package:flutter/material.dart';

class NotifyRedDot extends StatelessWidget {
  const NotifyRedDot({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: 8,
        height: 8,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFCC1E1E),
        ),
      );
}
