import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMediaList extends StatelessWidget {
  const SocialMediaList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => launchUrlString("https://www.facebook.com/institutovidaparatodos/"),
              child: SvgPicture.asset(width: 30, height: 30, "assets/icons/facebook-icon.svg"),
            ),
            GestureDetector(
              onTap: () => launchUrlString("https://www.instagram.com/institutovidaparatodos/"),
              child: SvgPicture.asset(width: 30, height: 30, "assets/icons/instagram-icon.svg"),
            ),
            GestureDetector(
              onTap: () => launchUrlString("https://www.youtube.com/institutovidaparatodos/"),
              child: SvgPicture.asset(width: 30, height: 30, "assets/icons/youtube-icon.svg"),
            ),
            GestureDetector(
              onTap: () => launchUrlString(
                "https://open.spotify.com/show/7omrpEfEN794JONo8jfQpV?si=a4a4fced49cf43eb&nd=1&dlsi=f32453e82709440c",
              ),
              child: SvgPicture.asset(width: 30, height: 30, "assets/icons/spotify-icon.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
