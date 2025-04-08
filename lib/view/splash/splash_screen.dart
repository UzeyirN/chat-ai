import 'dart:async';

import 'package:chat_front/view/splash/widgets/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../constants/app_colors.dart';
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
      body: Center(child: splash.value ? SplashContent() : SizedBox.shrink()),
    );
  }
}
