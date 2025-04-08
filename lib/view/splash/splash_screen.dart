import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../constants/app_colors.dart';
import '../../constants/assets.dart';
import '../../constants/text_style.dart';
import '../welcome/welcome_screen.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splash = useState(true);

    useEffect(() {
      final timer = Timer(const Duration(seconds: 3), () {
        splash.value = false;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()),
        );
      });

      return timer.cancel;
    }, []);
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child:
            splash.value
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5,
                  children: [
                    Image(
                      image: AssetImage(Assets.splash),
                      width: 50,
                      height: 50,
                    ),
                    Text('ChatBot', style: splashTextStyle),
                  ],
                )
                : SizedBox.shrink(),
      ),
    );
  }
}
