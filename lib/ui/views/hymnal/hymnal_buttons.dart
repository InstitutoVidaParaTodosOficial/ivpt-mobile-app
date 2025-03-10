import 'package:app/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class HymnalButtons extends StatelessWidget {
  final String text;
  final IconData iconData;
  final double? sizeIcon;
  final void Function()? onPressed;

  const HymnalButtons({
    super.key,
    required this.text,
    required this.iconData,
    this.sizeIcon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed ?? () {},
      label: Text(
        text,
        style: const TextStyle(fontSize: 25, fontFamily: "sans-serif-light"),
      ),
      icon: Icon(
        iconData,
        size: sizeIcon,
      ),
      iconAlignment: IconAlignment.start,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        alignment: Alignment.centerLeft,
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.black,
      ),
    );
  }
}
