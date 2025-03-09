import 'package:flutter/material.dart';
import 'package:app/utils/app_colors/app_colors.dart';
import 'package:app/utils/translations/translations_texts.dart';
import 'package:app/ui/widgets/custom/custom_title.dart';

class CustomCard extends StatelessWidget {
  final String title, description;
  final Image image;
  final Color backgroundImageColor;

  const CustomCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.backgroundImageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: AppColors.boxShadow,
            spreadRadius: 1,
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: CustomTitle(text: title.i18texts),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: backgroundImageColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black38),
                ),
                child: image,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 150,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  description.i18texts,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontFamily: "sans-serif-light"),
                ),
              )
            ],
          ),
          const SizedBox(height: 14),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.textPrimary,
              padding: const EdgeInsets.all(15),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                side: BorderSide(color: Colors.black54),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Offer'.i18texts,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: "sans-serif-light",
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
