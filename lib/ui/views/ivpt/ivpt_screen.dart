import 'package:app/ui/views/ivpt/social_media_list.dart';
import 'package:flutter/material.dart';
import 'package:app/ui/widgets/custom/custom_title.dart';
import 'package:app/ui/views/ivpt/expansion_grid.dart';
import 'package:app/utils/app_colors/app_colors.dart';
import 'package:app/utils/translations/translations_texts.dart';

class IvptScreen extends StatelessWidget {
  const IvptScreen({super.key});

  final gapWidget = const SizedBox(height: 15);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTitle(
            text: 'Who We Are'.i18texts,
          ),
          gapWidget,
          Text(
            "We are a communication channel aimed at spreading the work of the gospel of the kingdom of God "
                    "throughout the earth. In addition to our work on social media, we have other expansion tools:"
                .i18texts,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          CustomTitle(
            text: 'Expansion Tools'.i18texts,
          ),
          const SizedBox(height: 20),
          ExpansionGrid(
            items: const [
              {
                'image': 'assets/images/logos/logo-editora.png',
                'url': 'https://arvoredavida.org.br/',
                'color': AppColors.green,
                'scale': 3.2
              },
              {
                'image': 'assets/images/logos/logo-expolivro.png',
                'url': 'https://expolivro.com.br/',
                'color': AppColors.background
              },
              {
                'image': 'assets/images/logos/logo-doisoitooito.png',
                'url': 'https://288oficial.com/',
                'color': AppColors.black,
                'scale': 3.0
              },
              {
                'image': 'assets/images/logos/logo-ceape.png',
                'url': 'https://institutovidaparatodos.org.br/editoriais/noticias/ceape/',
                'color': AppColors.background
              },
              {
                'image': 'assets/images/logos/logo-bookafe.png',
                'url': 'https://institutovidaparatodos.org.br/editoriais/noticias/bookafe/',
                'color': AppColors.darkRed,
                'scale': 3.0
              },
              {
                'image': 'assets/images/logos/logo-eav.png',
                'url': 'https://estanciaarvoredavida.com.br/',
                'color': AppColors.background
              },
            ],
            crossAxisCount: orientation == Orientation.portrait ? 3 : 6,
            isImages: true,
          ),
          const SizedBox(height: 20),
          CustomTitle(
            text: 'Mission'.i18texts,
          ),
          gapWidget,
          Text(
            'Our mission is to fulfill what the Lord Jesus established in His Word: "Preach the '
                    'gospel of the kingdom to the whole world as a testimony to all nations" (Mt 24:14).'
                .i18texts,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          CustomTitle(
            text: 'Values'.i18texts,
          ),
          gapWidget,
          ExpansionGrid(
            items: const ['Love', 'Enthusiasm', 'Excellence', 'Inclusion', 'Commitment', 'Unanimity'],
            crossAxisCount: orientation == Orientation.portrait ? 3 : 6,
            isImages: false,
          ),
          const SizedBox(height: 20),
          CustomTitle(
            text: 'Contact'.i18texts,
          ),
          gapWidget,
          Text(
            'We hope you enjoyed getting to know us. Sign up for our digital '
                    'channels and receive divinely inspired content daily.'
                .i18texts,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          gapWidget,
          const SocialMediaList(),
          gapWidget,
          Text(
            'If you have any questions or comments, please contact us.'.i18texts,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          gapWidget,
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.phone_android_outlined,
              color: AppColors.primary,
            ),
            label: const Text(
              '(11) 96348-7829',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueAccent,
              ),
            ),
          ),
          gapWidget,
          Text(
            'May God bless you and supply you with His LIFE!'.i18texts,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          gapWidget,
        ],
      ),
    );
  }
}
