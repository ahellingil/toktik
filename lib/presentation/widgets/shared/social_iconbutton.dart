import 'package:flutter/material.dart';
import 'package:toktik/config/theme/helpers/human_formats.dart';

class SocialIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;
  final VoidCallback? onPressed;

  const SocialIconButton(
      {super.key,
      required this.value,
      required this.iconData,
      iconColor,
      required this.onPressed})
      : color = iconColor ?? Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            iconData,
            color: color,
            size: 30,
          ),
        ),
        if (value > 0) Text(HumanFormats.readableNumber(value.toDouble())),
      ],
    );
  }
}
