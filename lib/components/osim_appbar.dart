import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_app/consts/constants.dart';
import 'package:one_app/themes/osim_icons.dart';
import 'package:one_app/utils/color_utils.dart';

/// An appbar with OSIM logo.
class OsimAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OsimAppBar({
    super.key,
    this.leading,
    this.title,
    this.actions,
    this.settings,
    this.invertColor = false,
    this.allowBack = true,
    this.backgroundColor,
    this.fadeLogo = false,
    this.hideLogo = false,
    this.opacity,
  });

  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final Function()? settings;
  final bool invertColor;
  final bool allowBack;
  final Color? backgroundColor;
  final bool fadeLogo;
  final bool hideLogo;
  final double? opacity;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget? _buildBackButton(BuildContext context) {
    // Don't put back button if not allow to navigate back.
    if (!allowBack) return const SizedBox();

    final nav = Navigator.of(context);
    final rootNav = Navigator.of(context, rootNavigator: true);
    final hasParentNav = rootNav != nav;
    final canPop = ModalRoute.of(context)?.canPop ?? false;

    // Don't put back button on root Home page.
    if (!canPop && !hasParentNav) return null;

    return IconButton(
      icon: Icon(
        OsimIcons.arrow_chevron_large_left,
        color: invertColor ? Colors.white : const Color(0xFF514244),
      ),
      onPressed: () {
        if (canPop) {
          nav.maybePop();
        } else {
          rootNav.maybePop();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      systemOverlayStyle: Platform.isIOS
          ? SystemUiOverlayStyle.dark
          : (backgroundColor?.isLight ?? true)
              ? SystemUiOverlayStyle.dark
              : SystemUiOverlayStyle.light,
      leading: leading ?? _buildBackButton(context),
      centerTitle: true,
      title: title ??
          ((invertColor)
              ? _logo(OsimImagePath.LOGO_LIGHT)
              : _logo(OsimImagePath.LOGO)),
      actions: [
        if (actions != null) ...actions!,
        if (settings != null)
          IconButton(icon: const Icon(Icons.more_vert), onPressed: settings),
      ],
    );
  }

  Widget? _logo(String image) {
    return hideLogo
        ? null
        : opacity != null
            ? _opacityLogo(image)
            : Image.asset(
                image,
                color: fadeLogo ? Colors.white.withOpacity(0.5) : null,
                colorBlendMode: fadeLogo ? BlendMode.modulate : null,
              );
  }

  Widget _opacityLogo(String image) {
    return Opacity(
      opacity: opacity!,
      child: Image.asset(
        image,
        color: fadeLogo ? Colors.white.withOpacity(0.5) : null,
        colorBlendMode: fadeLogo ? BlendMode.modulate : null,
      ),
    );
  }
}

extension on Color {
  bool get isLight => rgbToHsl(red, green, blue)[2] >= 0.5;
}
