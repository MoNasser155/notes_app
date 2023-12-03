import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.appbartext, required this.icon});

  final String appbartext;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appbartext,
          style: const TextStyle(fontSize: 36),
        ),
        const Spacer(),
         CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
