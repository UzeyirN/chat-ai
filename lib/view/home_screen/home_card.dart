import 'package:chat_front/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          _buildHomeCard(
            onTap: () {},
            color: AppColors.yellow,
            title: 'Text Improvement',
            subTitle: 'Enhances and corrects English text using GPT-4',
            imagePath: 'assets/png/writing.png',
          ),
          _buildHomeCard(
            onTap: () {},
            color: AppColors.secondaryBlue,
            title: 'Text-to-Speech (TTS)',
            subTitle:
                "Converts text to high-quality speech using OpenAI's models",
            imagePath: 'assets/png/speaking.png',
          ),
          _buildHomeCard(
            onTap: () {},
            color: AppColors.red,
            title: 'MP4 to MP3 Conversion',
            subTitle: 'Converts uploaded MP4 files into MP3 format',
            imagePath: 'assets/png/video.png',
          ),
        ],
      ),
    );
  }

  GestureDetector _buildHomeCard({
    required Color color,
    required String title,
    required String subTitle,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  title,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  subTitle,
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ),
            Expanded(flex: 3, child: Image(image: AssetImage(imagePath))),
          ],
        ),
      ),
    );
  }
}
