import 'package:flutter/material.dart';

import '../color_constants.dart';

class action_chip extends StatelessWidget {
  final String title_name;
  const action_chip({
    super.key,
    required this.title_name,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(
        title_name,
        style:
            const TextStyle(color: purple_color, fontWeight: FontWeight.w700),
      ),
      onPressed: () {},
      backgroundColor: bg_color,
      side: const BorderSide(color: purple_color),
    );
  }
}
