import 'package:flutter/material.dart';
import 'package:app/ui/widgets/offers/custom_card.dart';
import 'package:app/utils/app_colors/app_colors.dart';

class SectionCards extends StatefulWidget {
  const SectionCards({super.key});

  @override
  State<SectionCards> createState() => _SectionCardsState();
}

class _SectionCardsState extends State<SectionCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          title: "Missions Abroad",
          description: "Dedicated to supporting workers and advancing the mission in countries outside South America.",
          image: Image.asset(
            "assets/images/logos/logo-missions.png",
            scale: 3,

          ),
          backgroundImageColor: AppColors.darkBrown,
        ),
        const SizedBox(height: 20),
        CustomCard(
          title: "Life for All Institute",
          description: "Maintenance of the Lord's Work Communication Channel.",
          image: Image.asset(
            "assets/images/logos/logo-ivpt2.png",
            scale: 3,
          ),
          backgroundImageColor: AppColors.background,
        )
      ],
    );
  }
}
