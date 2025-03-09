import 'package:flutter/material.dart';
import 'package:app/utils/app_colors/app_colors.dart';
import 'package:app/utils/translations/translations_texts.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      decoration: BoxDecoration(
        color: AppColors.black,
        image: const DecorationImage(
          image: AssetImage('assets/images/banners/banner-donations.png'),
          fit: BoxFit.cover,
          opacity: 0.7
        ),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text.rich(
              TextSpan(
                text: "BE A SUPPORTER OF THE ".i18texts,
                style: const TextStyle(
                  fontFamily: "sans-serif-light",
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: "KINGDOM!".i18texts,
                    style: const TextStyle(
                      color: AppColors.aquaGreen,
                      fontWeight: FontWeight.bold,
                      fontFamily: "sans-serif-light",
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "The Central of Offerings was created to make it easier to contribute "
              "to the various needs of the Lord's work, bringing together all the updated "
              "information and methods for giving in one place.".i18texts,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontFamily: "sans-serif-light",
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Contribute to all fronts of the Lord's work!".i18texts.toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: "sans-serif-light",
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
