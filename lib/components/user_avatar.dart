import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:one_app/themes/osim_icons.dart';

/// A circular user's avatar display that automatically cache the image.
class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    this.size = 60,
    this.imageUrl,
    this.editable = false,
  });

  /// The size of this avatar.
  final double size;

  /// The avatar image source.
  final String? imageUrl;

  /// This is for editing, showing add icon for avatar
  final bool editable;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      foregroundColor: const Color(0xffbb86fc),
      backgroundColor: const Color(0xffbb86fc).withOpacity(0.1),
      child: (imageUrl == null)
          ? Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                const Icon(OsimIcons.profile___filled),
                if (editable)
                  const Positioned(
                    bottom: -12.0,
                    right: -12.0,
                    child: Icon(
                      OsimIcons.add_circle_filled,
                      color: Color(0xFF514244),
                    ),
                  ),
              ],
            )
          : ClipOval(
              child: CachedNetworkImage(
                imageUrl: imageUrl!,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
              ),
            ),
    );
  }
}
