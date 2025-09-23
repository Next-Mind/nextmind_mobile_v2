import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/(pages)/user_account_page.dart';
import 'package:nextmind_mobile_v2/ui/core/widgets/user_avatar/user_avatar_widget.dart';

class HomeAppBar extends StatefulWidget {
  final VoidCallback onMenuTap;

  const HomeAppBar({super.key, required this.onMenuTap});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();

    final formattedDate = DateFormat.MMMMd(locale).format(DateTime.now());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: widget.onMenuTap,
            child: Icon(Icons.menu, color: Colors.white),
          ),
          Text(
            formattedDate,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          UserAvatar(
            profileSize: 16,
            onTap: () => _showDialogPage(UserAccountPage()),
          ),
        ],
      ),
    );
  }

  void _showDialogPage(Widget page) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog.fullscreen(child: page);
      },
    );
  }
}
