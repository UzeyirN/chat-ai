import 'package:chat_front/utils/constants/app_paddings.dart';
import 'package:chat_front/utils/constants/text_style.dart';
import 'package:chat_front/utils/extensions/screen_size.dart';
import 'package:chat_front/utils/extensions/sized_box.dart';
import 'package:chat_front/utils/widgets/main_button.dart';
import 'package:chat_front/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/png_assets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
          child: Column(
            children: [
              SizedBox(
                height: context.screenHeight * 0.41,
                child: Image(image: AssetImage(PngAssets.ai)),
              ), //
              //24.h,
              Container(
                padding: AppPaddings.h35,
                child: Text(
                  textAlign: TextAlign.center,
                  'Welcome to Ai chat bot',
                  style: homeTitle,
                ),
              ),
              24.h,
              Padding(
                padding: AppPaddings.h30,
                child: Text(
                  textAlign: TextAlign.center,
                  'This app allows you to interact with a chatbot powered by AI. Start chatting with the bot and ask questions.',
                  style: homeContent,
                ),
              ),
              48.h,
              MainButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ], //
          ),
        ),
      ),
    );
  }
}
