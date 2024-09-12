import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_app/components/icon_with_background.dart';
import 'package:one_app/components/osim_appbar.dart';
import 'package:one_app/components/user_avatar.dart';
import 'package:one_app/go_router/route_paths.dart';
import 'package:one_app/profile/profile_viewmodel.dart';
import 'package:one_app/themes/osim_color_scheme.dart';
import 'package:one_app/themes/osim_icons.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: const OsimAppBar(
            allowBack: false,
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              top: 12.0,
              right: 12.0,
            ),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Profile',
                    style: TextStyle(
                      color: osimColorScheme.osimBrown,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  _ProfileCard(),
                  const SizedBox(height: 12.0),
                  _ActionList(),
                ],
              ),
            ),
          ),
        ),
      );
}

class _ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<ProfileViewModel>();
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAvatar(
              size: 60,
              imageUrl: vm.avatarUri,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 16.0,
                      ),
                      Flexible(
                        child: Text(
                          'Hugo',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(thickness: 1.5),
                  const SizedBox(
                    height: 16.0,
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 16.0,
                        ),
                        const Text(
                          'Profile Completion',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '${(1.0 * 100).ceil()}%',
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            InkWell(
              onTap: () {},
              child: const IconWithBackground(
                icon: OsimIcons.edit,
                iconColor: Color(0xFFF37021),
                iconSize: 20,
                backgroundColor: Color(0x80F37021),
                backgroundSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ActionButton(
            icon: OsimIcons.dialog,
            label: 'Feed Back',
            onPressed: () {},
          ),
          const Divider(thickness: 1),
          _ActionButton(
            icon: OsimIcons.notification_bell,
            label: 'Notifications',
            onPressed: () {},
          ),
          const Divider(thickness: 1),
          _ActionButton(
            icon: OsimIcons.help,
            label: 'FAQ',
            onPressed: () {
              context.push(RoutePaths.faqPrefixSlash);
            },
          ),
          const Divider(thickness: 1),
          _ActionButton(
            icon: OsimIcons.settings,
            label: 'Settings',
            onPressed: () {},
          ),
          const Divider(thickness: 1),
          _ActionButton(
            icon: OsimIcons.warranty,
            label: 'Product Warranty',
            onPressed: () {},
          ),
          const Divider(thickness: 1),
          _ActionButton(
            icon: OsimIcons.agreement_tos,
            label: 'Terms of Service',
            onPressed: () {},
          ),
          const Divider(thickness: 1),
          _ActionButton(
            icon: OsimIcons.agreement_privacy_policy,
            label: 'Privacy Policy',
            onPressed: () {},
          ),
          const Divider(thickness: 1),
          _ActionButton(
            icon: OsimIcons.information,
            label: 'About App',
            onPressed: () {},
          ),
          const Divider(thickness: 1),
          const _ActionButton(
            icon: OsimIcons.logout,
            label: 'Logout',
            onPressed: null,
          ),
        ],
      );
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    this.onPressed,
  });

  final IconData icon;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onPressed,
        style: textButton(osimColorScheme.osimBrown),
        child: Row(
          children: [
            Icon(icon, size: 24.0),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
