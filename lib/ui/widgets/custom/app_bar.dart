import 'package:flutter/material.dart';
import 'package:app/utils/app_colors/app_colors.dart';
import 'package:app/utils/translations/translations_app.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueNotifier<int> indexNotifier;

  const CustomAppBar({
    super.key,
    required this.indexNotifier,
  });

  static final List<String> _titles = ['Home', 'Hymnal', 'Ivpt', 'Central of Offerings'];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: indexNotifier,
      builder: (context, index, _) {
        return AppBar(
          centerTitle: true,
          title: Text(
            _titles[index].i18app.toUpperCase(),
          ),
          titleTextStyle: const TextStyle(
            fontFamily: "sans-serif-light",
            fontSize: 25,
          ),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textPrimary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          actions: _titles[index].contains('Hymnal')
              ? [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  )
                ]
              : null,
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
