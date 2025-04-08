import 'package:chat_front/view/welcome/widgets/welcome_content.dart';
import 'package:flutter/material.dart';

import '../../constants/app_paddings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: AppPaddings.screenPad, child: WelcomeContent()),
      ),
    );
  }
}
