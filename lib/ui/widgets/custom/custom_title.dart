import 'package:flutter/material.dart';
import 'package:app/utils/app_colors/app_colors.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final double? heigth;

  const CustomTitle({
    super.key,
    required this.text,
    this.heigth,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(right: 10),
              child: Divider(
                color: AppColors.secondary,
                height: heigth ?? 1,
              ),
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontFamily: "sans-serif-light",
              fontSize: 25,
              color: AppColors.primary,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Divider(
                color: AppColors.secondary,
                height: heigth ?? 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
