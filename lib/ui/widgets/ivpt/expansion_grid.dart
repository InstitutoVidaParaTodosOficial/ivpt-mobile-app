import 'package:app/utils/app_colors/app_colors.dart';
import 'package:app/utils/translations/translations_texts.dart';
import 'package:flutter/material.dart';

class ExpansionGrid extends StatelessWidget {
  final int crossAxisCount;
  final List<dynamic> items;
  final bool isImages;

  const ExpansionGrid({
    required this.items,
    required this.isImages,
    required this.crossAxisCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: isImages ? items[index]["color"] : AppColors.background,
            shape: BoxShape.circle,
            image: isImages
                ? DecorationImage(
                    image: AssetImage(
                      items[index]["image"],
                    ),
                    scale: items[index]["scale"] ?? 1,
                  )
                : null,
            border: Border.all(
              color: Colors.black38,
            ),
          ),
          child: !isImages
              ? Center(
                  child: Text(
                    items[index].toString().i18texts,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }
}
